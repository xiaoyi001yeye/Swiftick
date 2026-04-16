import 'dart:async';
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TimerHomePage extends StatefulWidget {
  const TimerHomePage({super.key});

  @override
  State<TimerHomePage> createState() => _TimerHomePageState();
}

class _TimerHomePageState extends State<TimerHomePage> {
  Timer? _ticker;
  Timer? _countdownTicker;
  final AudioPlayer _dingPlayer = AudioPlayer();
  Duration _elapsed = Duration.zero;
  DateTime? _startedAt;
  Duration? _leftStoppedAt;
  Duration? _rightStoppedAt;
  int? _countdownValue;
  bool _isStartPressed = false;

  bool get _isRunning => _startedAt != null;
  bool get _isFinished => _leftLocked && _rightLocked;
  bool get _isCountingDown => _countdownValue != null;
  bool get _leftLocked => _leftStoppedAt != null;
  bool get _rightLocked => _rightStoppedAt != null;

  @override
  void initState() {
    super.initState();
    _dingPlayer.setReleaseMode(ReleaseMode.stop);
  }

  @override
  void dispose() {
    _ticker?.cancel();
    _countdownTicker?.cancel();
    _dingPlayer.dispose();
    super.dispose();
  }

  void _startCountdown() {
    if (_isRunning || _isCountingDown) {
      return;
    }

    _ticker?.cancel();
    _countdownTicker?.cancel();

    setState(() {
      _elapsed = Duration.zero;
      _leftStoppedAt = null;
      _rightStoppedAt = null;
      _startedAt = null;
      _countdownValue = 3;
      _isStartPressed = false;
    });

    _countdownTicker = Timer.periodic(const Duration(seconds: 1), (timer) {
      final currentValue = _countdownValue;
      if (!mounted || currentValue == null) {
        timer.cancel();
        return;
      }

      if (currentValue <= 1) {
        timer.cancel();
        _beginTimer();
        return;
      }

      setState(() {
        _countdownValue = currentValue - 1;
      });
    });
  }

  void _beginTimer() {
    _ticker?.cancel();
    final startedAt = DateTime.now();
    _ticker = Timer.periodic(const Duration(milliseconds: 16), (_) {
      if (!mounted || _startedAt == null) {
        return;
      }

      setState(() {
        _elapsed = DateTime.now().difference(startedAt);
      });
    });

    setState(() {
      _elapsed = Duration.zero;
      _leftStoppedAt = null;
      _rightStoppedAt = null;
      _startedAt = startedAt;
      _countdownValue = null;
    });
  }

  void _handleSideTap({required bool isLeft}) {
    if (!_isRunning) {
      return;
    }

    if (isLeft && _leftLocked) {
      return;
    }

    if (!isLeft && _rightLocked) {
      return;
    }

    final capture = _elapsed;
    final willCompleteRound =
        (isLeft && _rightLocked) || (!isLeft && _leftLocked);

    unawaited(_playPauseSound());

    setState(() {
      if (isLeft) {
        _leftStoppedAt = capture;
      } else {
        _rightStoppedAt = capture;
      }

      if (willCompleteRound) {
        _ticker?.cancel();
        _startedAt = null;
      }
    });
  }

  Future<void> _playPauseSound() async {
    try {
      await _dingPlayer.stop();
      await _dingPlayer.play(AssetSource('sound/bell.mp3'));
    } catch (_) {
      // 音效失败时不影响计时主流程
    }
  }

  void _resetToIdle() {
    _ticker?.cancel();
    _countdownTicker?.cancel();
    setState(() {
      _elapsed = Duration.zero;
      _leftStoppedAt = null;
      _rightStoppedAt = null;
      _startedAt = null;
      _countdownValue = null;
    });
  }

  String _formatTime(Duration value) {
    final minutes = value.inMinutes.toString().padLeft(2, '0');
    final seconds = (value.inSeconds % 60).toString().padLeft(2, '0');
    final milliseconds =
        (value.inMilliseconds % 1000).toString().padLeft(3, '0');
    return '$minutes:$seconds.$milliseconds';
  }

  Widget _buildRunningSide({
    required Color backgroundColor,
    required Duration? stoppedAt,
    required VoidCallback onTap,
  }) {
    final shownTime = stoppedAt ?? _elapsed;

    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: ColoredBox(
          color: backgroundColor,
          child: Center(
            child: Text(
              _formatTime(shownTime),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 54,
                fontWeight: FontWeight.w700,
                fontFeatures: [FontFeature.tabularFigures()],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSplitBackground() {
    return Row(
      children: [
        _buildRunningSide(
          backgroundColor: const Color(0xFF1565C0),
          stoppedAt: _leftStoppedAt,
          onTap: () => _handleSideTap(isLeft: true),
        ),
        _buildRunningSide(
          backgroundColor: const Color(0xFFC62828),
          stoppedAt: _rightStoppedAt,
          onTap: () => _handleSideTap(isLeft: false),
        ),
      ],
    );
  }

  Widget _buildStartButton() {
    final shellRadius = BorderRadius.circular(42);
    final keyRadius = BorderRadius.circular(34);

    return AnimatedScale(
      scale: _isStartPressed ? 0.97 : 1,
      duration: const Duration(milliseconds: 110),
      curve: Curves.easeOutCubic,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 110),
        curve: Curves.easeOutCubic,
        transform: Matrix4.translationValues(0, _isStartPressed ? 5 : 0, 0),
        width: 260,
        height: 92,
        child: ClipRRect(
          borderRadius: shellRadius,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: shellRadius,
                border: Border.all(
                  color: Colors.white.withOpacity(0.8),
                  width: 1.8,
                ),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFF8FBFC),
                    Color(0xFFD9DDE1),
                    Color(0xFFB7BCC2),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.26),
                    blurRadius: 22,
                    offset: Offset(0, _isStartPressed ? 5 : 14),
                  ),
                  BoxShadow(
                    color: Colors.white.withOpacity(0.45),
                    blurRadius: 8,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: _startCountdown,
                    onTapDown: (_) => setState(() => _isStartPressed = true),
                    onTapUp: (_) => setState(() => _isStartPressed = false),
                    onTapCancel: () => setState(() => _isStartPressed = false),
                    borderRadius: keyRadius,
                    splashColor: Colors.white.withOpacity(0.08),
                    highlightColor: Colors.transparent,
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: keyRadius,
                        border: Border.all(
                          color: const Color(0xFF595F67),
                          width: 1.2,
                        ),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF626871),
                            Color(0xFF3D434A),
                            Color(0xFF272C31),
                          ],
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 10,
                            left: 20,
                            right: 20,
                            child: Container(
                              height: 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(99),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.white.withOpacity(0.55),
                                    Colors.white.withOpacity(0.06),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Row(
                              children: const [
                                _AccentPip(color: Color(0xFFE53935)),
                                SizedBox(width: 5),
                                _AccentPip(color: Color(0xFFFF6D5E)),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 20,
                            child: Container(
                              width: 28,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(99),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF6AC7FF),
                                    Color(0xFF2E79C7),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'START',
                            style: TextStyle(
                              color: Color(0xFFF4F5F6),
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 4.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildSplitBackground(),
          if (!_isRunning && !_isFinished && !_isCountingDown)
            Center(child: _buildStartButton()),
          if (_isCountingDown)
            IgnorePointer(
              child: ColoredBox(
                color: Colors.black26,
                child: Center(
                  child: Text(
                    '$_countdownValue',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 120,
                      fontWeight: FontWeight.w800,
                      fontFeatures: [FontFeature.tabularFigures()],
                    ),
                  ),
                ),
              ),
            ),
          if (_isFinished)
            Positioned(
              left: 0,
              right: 0,
              bottom: 24,
              child: Center(
                child: SizedBox(
                  width: 220,
                  height: 72,
                  child: ElevatedButton(
                    onPressed: _resetToIdle,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    child: const Text('重置'),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _AccentPip extends StatelessWidget {
  const _AccentPip({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.45),
            blurRadius: 6,
          ),
        ],
      ),
    );
  }
}
