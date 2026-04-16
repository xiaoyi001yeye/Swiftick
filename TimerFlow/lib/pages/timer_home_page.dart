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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildSplitBackground(),
          if (!_isRunning && !_isFinished && !_isCountingDown)
            Center(
              child: SizedBox(
                width: 240,
                height: 88,
                child: ElevatedButton(
                  onPressed: _startCountdown,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF60B49D),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  child: const Text('开始'),
                ),
              ),
            ),
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
