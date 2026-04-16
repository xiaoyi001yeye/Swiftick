import 'dart:async';
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

const List<_StartButtonStyleData> _startButtonStyles = [
  _StartButtonStyleData(
    id: 1,
    name: 'Classic Quartz',
    frameColors: [Color(0xFFFAFCFD), Color(0xFFDADDE1), Color(0xFFB5BBC3)],
    bodyColors: [Color(0xFF676F79), Color(0xFF424850), Color(0xFF282D33)],
    frameBorderColor: Color(0xFFFDFEFF),
    bodyBorderColor: Color(0xFF5B636E),
    labelColor: Color(0xFFF8F9FB),
    labelShadowColor: Color(0x990B0D10),
    glossColors: [Color(0xAAFFFFFF), Color(0x08FFFFFF)],
    redLights: [Color(0xFFFF5448), Color(0xFFE1372F)],
    sliderColors: [Color(0xFF75D6FF), Color(0xFF2B73C5)],
    frameRadius: 42,
    bodyRadius: 34,
    width: 260,
    height: 92,
    frameBorderWidth: 1.8,
    bodyBorderWidth: 1.2,
    bodyInset: 8,
    textSize: 26,
    letterSpacing: 4.8,
    pipSize: 8,
    sliderWidth: 28,
    sliderHeight: 8,
    sideInset: 20,
    shadowDepth: 14,
    pressDepth: 5,
  ),
  _StartButtonStyleData(
    id: 2,
    name: 'Pixel Hero',
    frameColors: [Color(0xFFFFFFFF), Color(0xFFE7E9EC), Color(0xFFC9CDD4)],
    bodyColors: [Color(0xFF59616A), Color(0xFF3B4149), Color(0xFF1E2328)],
    frameBorderColor: Color(0xFFFFFFFF),
    bodyBorderColor: Color(0xFF6A727D),
    labelColor: Color(0xFFFFFFFF),
    labelShadowColor: Color(0xCC0A0C0F),
    glossColors: [Color(0x99FFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF665E), Color(0xFFFF4338)],
    sliderColors: [Color(0xFF80D9FF), Color(0xFF1C6BC5)],
    frameRadius: 28,
    bodyRadius: 18,
    width: 258,
    height: 92,
    frameBorderWidth: 2.2,
    bodyBorderWidth: 1.8,
    bodyInset: 8,
    textSize: 24,
    letterSpacing: 5.6,
    pipSize: 7,
    sliderWidth: 24,
    sliderHeight: 7,
    sideInset: 18,
    shadowDepth: 13,
    pressDepth: 4,
    pixelStyle: true,
  ),
  _StartButtonStyleData(
    id: 3,
    name: 'Switch Matte',
    frameColors: [Color(0xFFF8FBFC), Color(0xFFE9EEF1), Color(0xFFD8DDE2)],
    bodyColors: [Color(0xFF5F656B), Color(0xFF53595F), Color(0xFF474D53)],
    frameBorderColor: Color(0xFFF6FAFC),
    bodyBorderColor: Color(0xFF727980),
    labelColor: Color(0xFFFAFBFD),
    labelShadowColor: Color(0x550D0F12),
    glossColors: [Color(0x55FFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF6C63), Color(0xFFFF4F45)],
    sliderColors: [Color(0xFF90DCFF), Color(0xFF4F9AF2)],
    frameRadius: 38,
    bodyRadius: 30,
    width: 264,
    height: 90,
    frameBorderWidth: 1.4,
    bodyBorderWidth: 1.0,
    bodyInset: 8,
    textSize: 25,
    letterSpacing: 4.2,
    pipSize: 8,
    sliderWidth: 26,
    sliderHeight: 8,
    sideInset: 20,
    shadowDepth: 10,
    pressDepth: 4,
    flatStyle: true,
  ),
  _StartButtonStyleData(
    id: 4,
    name: 'Candy Slate',
    frameColors: [Color(0xFFFFFAFD), Color(0xFFF1DCE5), Color(0xFFDDBFCF)],
    bodyColors: [Color(0xFF6D6471), Color(0xFF4D4652), Color(0xFF312B34)],
    frameBorderColor: Color(0xFFFFFDFF),
    bodyBorderColor: Color(0xFF746C78),
    labelColor: Color(0xFFFEFAFF),
    labelShadowColor: Color(0x880B0810),
    glossColors: [Color(0x8AFFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF7870), Color(0xFFEF483E)],
    sliderColors: [Color(0xFF82DBFF), Color(0xFF448AE3)],
    frameRadius: 40,
    bodyRadius: 32,
    width: 262,
    height: 92,
    frameBorderWidth: 1.7,
    bodyBorderWidth: 1.1,
    bodyInset: 8,
    textSize: 26,
    letterSpacing: 4.9,
    pipSize: 8,
    sliderWidth: 28,
    sliderHeight: 8,
    sideInset: 20,
    shadowDepth: 14,
    pressDepth: 5,
  ),
  _StartButtonStyleData(
    id: 5,
    name: 'Famicom Soft',
    frameColors: [Color(0xFFFFFBF4), Color(0xFFF2E2D5), Color(0xFFE0C5AF)],
    bodyColors: [Color(0xFF635851), Color(0xFF463B35), Color(0xFF2C241F)],
    frameBorderColor: Color(0xFFFFFEFC),
    bodyBorderColor: Color(0xFF6D615A),
    labelColor: Color(0xFFFFF8F0),
    labelShadowColor: Color(0xAA130F0B),
    glossColors: [Color(0x92FFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF6C54), Color(0xFFDA3C2D)],
    sliderColors: [Color(0xFF7DD7FF), Color(0xFF3079D6)],
    frameRadius: 36,
    bodyRadius: 28,
    width: 260,
    height: 90,
    frameBorderWidth: 2.0,
    bodyBorderWidth: 1.3,
    bodyInset: 8,
    textSize: 25,
    letterSpacing: 4.6,
    pipSize: 8,
    sliderWidth: 28,
    sliderHeight: 8,
    sideInset: 19,
    shadowDepth: 13,
    pressDepth: 5,
  ),
  _StartButtonStyleData(
    id: 6,
    name: 'SNES Frost',
    frameColors: [Color(0xFFF9F8FF), Color(0xFFE4E0F0), Color(0xFFC8C0DB)],
    bodyColors: [Color(0xFF6C6A7D), Color(0xFF4C4A5B), Color(0xFF2F2D3A)],
    frameBorderColor: Color(0xFFFFFEFF),
    bodyBorderColor: Color(0xFF76738C),
    labelColor: Color(0xFFF8F7FD),
    labelShadowColor: Color(0x990C0A13),
    glossColors: [Color(0x88FFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF7676), Color(0xFFE14545)],
    sliderColors: [Color(0xFF93DDFF), Color(0xFF4B8FEA)],
    frameRadius: 40,
    bodyRadius: 30,
    width: 262,
    height: 92,
    frameBorderWidth: 1.8,
    bodyBorderWidth: 1.2,
    bodyInset: 9,
    textSize: 25,
    letterSpacing: 4.7,
    pipSize: 8,
    sliderWidth: 26,
    sliderHeight: 8,
    sideInset: 21,
    shadowDepth: 13,
    pressDepth: 5,
  ),
  _StartButtonStyleData(
    id: 7,
    name: 'Mint Pocket',
    frameColors: [Color(0xFFF6FFF9), Color(0xFFDDEDE5), Color(0xFFBDD1C5)],
    bodyColors: [Color(0xFF5C6763), Color(0xFF414B47), Color(0xFF29302D)],
    frameBorderColor: Color(0xFFF9FFFC),
    bodyBorderColor: Color(0xFF6F7A75),
    labelColor: Color(0xFFF7FFFA),
    labelShadowColor: Color(0x880C1110),
    glossColors: [Color(0x78FFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF7468), Color(0xFFF0493D)],
    sliderColors: [Color(0xFF8AE1FF), Color(0xFF4194E8)],
    frameRadius: 38,
    bodyRadius: 28,
    width: 262,
    height: 90,
    frameBorderWidth: 1.5,
    bodyBorderWidth: 1.1,
    bodyInset: 8,
    textSize: 25,
    letterSpacing: 4.4,
    pipSize: 8,
    sliderWidth: 27,
    sliderHeight: 8,
    sideInset: 20,
    shadowDepth: 11,
    pressDepth: 4,
    flatStyle: true,
  ),
  _StartButtonStyleData(
    id: 8,
    name: 'Neon Arena',
    frameColors: [Color(0xFFF8FDFF), Color(0xFFDDEBF5), Color(0xFFBDD0E6)],
    bodyColors: [Color(0xFF50606E), Color(0xFF384754), Color(0xFF1F2931)],
    frameBorderColor: Color(0xFFFDFFFF),
    bodyBorderColor: Color(0xFF607483),
    labelColor: Color(0xFFF6FCFF),
    labelShadowColor: Color(0xAA071017),
    glossColors: [Color(0x9FFFFFFF), Color(0x04FFFFFF)],
    redLights: [Color(0xFFFF675A), Color(0xFFFF4738)],
    sliderColors: [Color(0xFF72E3FF), Color(0xFF1F86E5)],
    frameRadius: 42,
    bodyRadius: 32,
    width: 264,
    height: 92,
    frameBorderWidth: 1.7,
    bodyBorderWidth: 1.2,
    bodyInset: 8,
    textSize: 26,
    letterSpacing: 5.0,
    pipSize: 8,
    sliderWidth: 30,
    sliderHeight: 8,
    sideInset: 20,
    shadowDepth: 15,
    pressDepth: 5,
  ),
  _StartButtonStyleData(
    id: 9,
    name: 'Studio Mono',
    frameColors: [Color(0xFFFFFFFF), Color(0xFFF0F2F4), Color(0xFFD8DBDF)],
    bodyColors: [Color(0xFF56575C), Color(0xFF414246), Color(0xFF242529)],
    frameBorderColor: Color(0xFFFDFEFF),
    bodyBorderColor: Color(0xFF65676C),
    labelColor: Color(0xFFFFFFFF),
    labelShadowColor: Color(0x660D0E10),
    glossColors: [Color(0x4AFFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF7366), Color(0xFFFF5145)],
    sliderColors: [Color(0xFF91DAFF), Color(0xFF5A9AEF)],
    frameRadius: 36,
    bodyRadius: 28,
    width: 258,
    height: 88,
    frameBorderWidth: 1.4,
    bodyBorderWidth: 1.0,
    bodyInset: 7,
    textSize: 24,
    letterSpacing: 4.1,
    pipSize: 7,
    sliderWidth: 26,
    sliderHeight: 7,
    sideInset: 19,
    shadowDepth: 10,
    pressDepth: 4,
    flatStyle: true,
  ),
  _StartButtonStyleData(
    id: 10,
    name: 'Velvet Carbon',
    frameColors: [Color(0xFFF9FAFD), Color(0xFFE7EAF1), Color(0xFFCCD0DD)],
    bodyColors: [Color(0xFF414650), Color(0xFF2F343C), Color(0xFF1B1E24)],
    frameBorderColor: Color(0xFFFBFCFF),
    bodyBorderColor: Color(0xFF545A66),
    labelColor: Color(0xFFF7F9FF),
    labelShadowColor: Color(0xB0000000),
    glossColors: [Color(0x8FFFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF6E61), Color(0xFFE53E33)],
    sliderColors: [Color(0xFF85DEFF), Color(0xFF2D84DB)],
    frameRadius: 44,
    bodyRadius: 34,
    width: 266,
    height: 94,
    frameBorderWidth: 1.8,
    bodyBorderWidth: 1.2,
    bodyInset: 8,
    textSize: 26,
    letterSpacing: 5.2,
    pipSize: 8,
    sliderWidth: 30,
    sliderHeight: 8,
    sideInset: 21,
    shadowDepth: 15,
    pressDepth: 5,
  ),
];

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
  int _currentStartStyleIndex = 0;
  bool _isStartPressed = false;
  bool _isRefreshPressed = false;

  bool get _isRunning => _startedAt != null;
  bool get _isFinished => _leftLocked && _rightLocked;
  bool get _isCountingDown => _countdownValue != null;
  bool get _leftLocked => _leftStoppedAt != null;
  bool get _rightLocked => _rightStoppedAt != null;
  _StartButtonStyleData get _currentStartStyle =>
      _startButtonStyles[_currentStartStyleIndex];

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

  void _showNextStartStyle() {
    if (_isRunning || _isCountingDown) {
      return;
    }

    setState(() {
      _currentStartStyleIndex =
          (_currentStartStyleIndex + 1) % _startButtonStyles.length;
      _isStartPressed = false;
      _isRefreshPressed = false;
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

  Widget _buildStartButton(_StartButtonStyleData style) {
    final shellRadius = BorderRadius.circular(style.frameRadius);
    final keyRadius = BorderRadius.circular(style.bodyRadius);
    final outerShadow = style.flatStyle ? 12.0 : 22.0;
    final outerOffset = _isStartPressed ? style.pressDepth : style.shadowDepth;

    return AnimatedScale(
      scale: _isStartPressed ? 0.97 : 1,
      duration: const Duration(milliseconds: 110),
      curve: Curves.easeOutCubic,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 110),
        curve: Curves.easeOutCubic,
        transform: Matrix4.translationValues(0, _isStartPressed ? style.pressDepth : 0, 0),
        width: style.width,
        height: style.height,
        child: ClipRRect(
          borderRadius: shellRadius,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: style.flatStyle ? 6 : 10,
              sigmaY: style.flatStyle ? 6 : 10,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: shellRadius,
                border: Border.all(
                  color: style.frameBorderColor,
                  width: style.frameBorderWidth,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: style.frameColors,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(style.flatStyle ? 0.16 : 0.28),
                    blurRadius: outerShadow,
                    offset: Offset(0, outerOffset),
                  ),
                  BoxShadow(
                    color: Colors.white.withOpacity(style.flatStyle ? 0.28 : 0.46),
                    blurRadius: style.flatStyle ? 5 : 8,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(style.bodyInset),
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
                          color: style.bodyBorderColor,
                          width: style.bodyBorderWidth,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: style.bodyColors,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: style.pixelStyle ? 9 : 10,
                            left: style.sideInset,
                            right: style.sideInset,
                            child: Container(
                              height: style.flatStyle ? 3 : 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(style.pixelStyle ? 6 : 99),
                                gradient: LinearGradient(
                                  colors: style.glossColors,
                                ),
                              ),
                            ),
                          ),
                          if (!style.flatStyle)
                            Positioned(
                              left: style.sideInset,
                              right: style.sideInset,
                              bottom: 10,
                              child: Container(
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    style.pixelStyle ? 6 : 99,
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black.withOpacity(0),
                                      Colors.black.withOpacity(0.18),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          Positioned(
                            left: style.sideInset,
                            child: Row(
                              children: [
                                _AccentPip(
                                  color: style.redLights.first,
                                  size: style.pipSize,
                                ),
                                const SizedBox(width: 5),
                                _AccentPip(
                                  color: style.redLights.last,
                                  size: style.pipSize,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: style.sideInset,
                            child: Container(
                              width: style.sliderWidth,
                              height: style.sliderHeight,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  style.pixelStyle ? 4 : 99,
                                ),
                                gradient: LinearGradient(
                                  colors: style.sliderColors,
                                ),
                              ),
                            ),
                          ),
                          if (style.pixelStyle) ..._buildPixelCorners(style),
                          Text(
                            'START',
                            style: TextStyle(
                              color: style.labelColor,
                              fontSize: style.textSize,
                              fontWeight: FontWeight.w900,
                              letterSpacing: style.letterSpacing,
                              shadows: [
                                Shadow(
                                  color: style.labelShadowColor,
                                  blurRadius: style.flatStyle ? 1 : 6,
                                  offset: Offset(0, style.flatStyle ? 1 : 2),
                                ),
                              ],
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

  List<Widget> _buildPixelCorners(_StartButtonStyleData style) {
    final accent = style.frameBorderColor.withOpacity(0.9);
    return [
      Positioned(
        top: 12,
        left: 10,
        child: _PixelCorner(accent: accent),
      ),
      Positioned(
        top: 12,
        right: 10,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(3.14159),
          child: _PixelCorner(accent: accent),
        ),
      ),
      Positioned(
        bottom: 12,
        left: 10,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationX(3.14159),
          child: _PixelCorner(accent: accent),
        ),
      ),
      Positioned(
        bottom: 12,
        right: 10,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(3.14159),
          child: _PixelCorner(accent: accent),
        ),
      ),
    ];
  }

  Widget _buildStyleSwitcher() {
    final style = _currentStartStyle;
    final idLabel = style.id.toString().padLeft(2, '0');

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.14),
            borderRadius: BorderRadius.circular(999),
            border: Border.all(color: Colors.white.withOpacity(0.24)),
          ),
          child: Text(
            'BUTTON $idLabel/10  ${style.name.toUpperCase()}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.7,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 16,
          runSpacing: 14,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 280),
              switchInCurve: Curves.easeOutCubic,
              switchOutCurve: Curves.easeInCubic,
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(
                    scale: Tween<double>(begin: 0.94, end: 1).animate(animation),
                    child: child,
                  ),
                );
              },
              child: KeyedSubtree(
                key: ValueKey(style.id),
                child: _buildStartButton(style),
              ),
            ),
            _buildRefreshButton(),
          ],
        ),
      ],
    );
  }

  Widget _buildRefreshButton() {
    return AnimatedScale(
      scale: _isRefreshPressed ? 0.95 : 1,
      duration: const Duration(milliseconds: 100),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        transform: Matrix4.translationValues(0, _isRefreshPressed ? 4 : 0, 0),
        width: 82,
        height: 82,
        child: Material(
          color: Colors.transparent,
          child: Ink(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.92),
              borderRadius: BorderRadius.circular(26),
              border: Border.all(
                color: Colors.white.withOpacity(0.95),
                width: 1.6,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.22),
                  blurRadius: 18,
                  offset: Offset(0, _isRefreshPressed ? 5 : 12),
                ),
              ],
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(26),
              onTap: _showNextStartStyle,
              onTapDown: (_) => setState(() => _isRefreshPressed = true),
              onTapUp: (_) => setState(() => _isRefreshPressed = false),
              onTapCancel: () => setState(() => _isRefreshPressed = false),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.refresh_rounded,
                    size: 30,
                    color: Color(0xFF263238),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'NEXT',
                    style: TextStyle(
                      color: Color(0xFF263238),
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
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
            Center(child: _buildStyleSwitcher()),
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
  const _AccentPip({required this.color, required this.size});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
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

class _PixelCorner extends StatelessWidget {
  const _PixelCorner({required this.accent});

  final Color accent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      height: 10,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(width: 4, height: 4, color: accent),
          ),
          Positioned(
            left: 4,
            top: 0,
            child: Container(width: 4, height: 2, color: accent),
          ),
          Positioned(
            left: 0,
            top: 4,
            child: Container(width: 2, height: 4, color: accent),
          ),
        ],
      ),
    );
  }
}

class _StartButtonStyleData {
  const _StartButtonStyleData({
    required this.id,
    required this.name,
    required this.frameColors,
    required this.bodyColors,
    required this.frameBorderColor,
    required this.bodyBorderColor,
    required this.labelColor,
    required this.labelShadowColor,
    required this.glossColors,
    required this.redLights,
    required this.sliderColors,
    required this.frameRadius,
    required this.bodyRadius,
    required this.width,
    required this.height,
    required this.frameBorderWidth,
    required this.bodyBorderWidth,
    required this.bodyInset,
    required this.textSize,
    required this.letterSpacing,
    required this.pipSize,
    required this.sliderWidth,
    required this.sliderHeight,
    required this.sideInset,
    required this.shadowDepth,
    required this.pressDepth,
    this.pixelStyle = false,
    this.flatStyle = false,
  });

  final int id;
  final String name;
  final List<Color> frameColors;
  final List<Color> bodyColors;
  final Color frameBorderColor;
  final Color bodyBorderColor;
  final Color labelColor;
  final Color labelShadowColor;
  final List<Color> glossColors;
  final List<Color> redLights;
  final List<Color> sliderColors;
  final double frameRadius;
  final double bodyRadius;
  final double width;
  final double height;
  final double frameBorderWidth;
  final double bodyBorderWidth;
  final double bodyInset;
  final double textSize;
  final double letterSpacing;
  final double pipSize;
  final double sliderWidth;
  final double sliderHeight;
  final double sideInset;
  final double shadowDepth;
  final double pressDepth;
  final bool pixelStyle;
  final bool flatStyle;
}
