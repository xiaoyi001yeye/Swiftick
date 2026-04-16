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
  _StartButtonStyleData(
    id: 11,
    name: 'Arcade Flame',
    frameColors: [Color(0xFFFFF3E8), Color(0xFFFFC89E), Color(0xFFFF8D42)],
    bodyColors: [Color(0xFF5C2D1C), Color(0xFF38180D), Color(0xFF1C0C07)],
    frameBorderColor: Color(0xFFFFFAF6),
    bodyBorderColor: Color(0xFF7A3D24),
    labelColor: Color(0xFFFFF8F0),
    labelShadowColor: Color(0xCC130903),
    glossColors: [Color(0xA6FFFFFF), Color(0x08FFF0E2)],
    redLights: [Color(0xFFFF5D45), Color(0xFFFF2C21)],
    sliderColors: [Color(0xFF96E6FF), Color(0xFF2687E2)],
    frameRadius: 24,
    bodyRadius: 18,
    width: 266,
    height: 92,
    frameBorderWidth: 2.4,
    bodyBorderWidth: 1.6,
    bodyInset: 8,
    textSize: 25,
    letterSpacing: 5.4,
    pipSize: 8,
    sliderWidth: 26,
    sliderHeight: 7,
    sideInset: 18,
    shadowDepth: 16,
    pressDepth: 5,
    pixelStyle: true,
  ),
  _StartButtonStyleData(
    id: 12,
    name: 'Ice Glass',
    frameColors: [Color(0xFFF9FFFF), Color(0xFFDDF7FF), Color(0xFFB9EAF8)],
    bodyColors: [Color(0xFF6E848C), Color(0xFF56696F), Color(0xFF425156)],
    frameBorderColor: Color(0xFFFFFFFF),
    bodyBorderColor: Color(0xFF89A6AE),
    labelColor: Color(0xFFFFFFFF),
    labelShadowColor: Color(0x55112229),
    glossColors: [Color(0x66FFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF7C72), Color(0xFFFF5B54)],
    sliderColors: [Color(0xFFA4E9FF), Color(0xFF67B6FF)],
    frameRadius: 46,
    bodyRadius: 36,
    width: 270,
    height: 94,
    frameBorderWidth: 1.3,
    bodyBorderWidth: 1.0,
    bodyInset: 8,
    textSize: 25,
    letterSpacing: 4.0,
    pipSize: 8,
    sliderWidth: 30,
    sliderHeight: 8,
    sideInset: 22,
    shadowDepth: 9,
    pressDepth: 4,
    flatStyle: true,
  ),
  _StartButtonStyleData(
    id: 13,
    name: 'Brutalist Mono',
    frameColors: [Color(0xFF1E2228), Color(0xFF12161B), Color(0xFF080A0E)],
    bodyColors: [Color(0xFFF2F3F4), Color(0xFFE3E4E6), Color(0xFFD0D2D5)],
    frameBorderColor: Color(0xFF2E3640),
    bodyBorderColor: Color(0xFFFCFCFD),
    labelColor: Color(0xFF17191D),
    labelShadowColor: Color(0x33FFFFFF),
    glossColors: [Color(0x66FFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF5F56), Color(0xFFE53F36)],
    sliderColors: [Color(0xFF67CCFF), Color(0xFF2466D0)],
    frameRadius: 18,
    bodyRadius: 14,
    width: 264,
    height: 88,
    frameBorderWidth: 1.8,
    bodyBorderWidth: 1.4,
    bodyInset: 7,
    textSize: 24,
    letterSpacing: 4.8,
    pipSize: 7,
    sliderWidth: 24,
    sliderHeight: 7,
    sideInset: 17,
    shadowDepth: 16,
    pressDepth: 5,
  ),
  _StartButtonStyleData(
    id: 14,
    name: 'Lavender Joy',
    frameColors: [Color(0xFFFFF8FF), Color(0xFFE9DAFF), Color(0xFFD1B1FF)],
    bodyColors: [Color(0xFF7A6493), Color(0xFF5E4C76), Color(0xFF403151)],
    frameBorderColor: Color(0xFFFFFDFF),
    bodyBorderColor: Color(0xFF8E79A7),
    labelColor: Color(0xFFFFFBFF),
    labelShadowColor: Color(0x990F0820),
    glossColors: [Color(0x92FFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF8B8B), Color(0xFFFF5C6D)],
    sliderColors: [Color(0xFF8BE4FF), Color(0xFF5F8FFF)],
    frameRadius: 44,
    bodyRadius: 32,
    width: 262,
    height: 92,
    frameBorderWidth: 1.6,
    bodyBorderWidth: 1.1,
    bodyInset: 8,
    textSize: 26,
    letterSpacing: 4.3,
    pipSize: 8,
    sliderWidth: 28,
    sliderHeight: 8,
    sideInset: 20,
    shadowDepth: 13,
    pressDepth: 5,
  ),
  _StartButtonStyleData(
    id: 15,
    name: 'Solar Gold',
    frameColors: [Color(0xFFFFF7D6), Color(0xFFFFD965), Color(0xFFFFB700)],
    bodyColors: [Color(0xFF665109), Color(0xFF4D3B08), Color(0xFF2D2205)],
    frameBorderColor: Color(0xFFFFFBE7),
    bodyBorderColor: Color(0xFF8B6F18),
    labelColor: Color(0xFFFFFBF0),
    labelShadowColor: Color(0xB02D2205),
    glossColors: [Color(0xA6FFF6C8), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF6D47), Color(0xFFE74125)],
    sliderColors: [Color(0xFF7BE8FF), Color(0xFF267AD9)],
    frameRadius: 34,
    bodyRadius: 24,
    width: 268,
    height: 90,
    frameBorderWidth: 2.1,
    bodyBorderWidth: 1.5,
    bodyInset: 8,
    textSize: 25,
    letterSpacing: 5.1,
    pipSize: 8,
    sliderWidth: 27,
    sliderHeight: 7,
    sideInset: 19,
    shadowDepth: 15,
    pressDepth: 5,
  ),
  _StartButtonStyleData(
    id: 16,
    name: 'Forest Module',
    frameColors: [Color(0xFFF5F7EE), Color(0xFFD4DBBF), Color(0xFFA3B079)],
    bodyColors: [Color(0xFF4E5A39), Color(0xFF394229), Color(0xFF242A19)],
    frameBorderColor: Color(0xFFF9FBF2),
    bodyBorderColor: Color(0xFF66774A),
    labelColor: Color(0xFFF8FBF2),
    labelShadowColor: Color(0x990A0E06),
    glossColors: [Color(0x80FFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF8073), Color(0xFFF04B41)],
    sliderColors: [Color(0xFF95E2FF), Color(0xFF4F90E8)],
    frameRadius: 26,
    bodyRadius: 18,
    width: 256,
    height: 86,
    frameBorderWidth: 1.9,
    bodyBorderWidth: 1.4,
    bodyInset: 8,
    textSize: 23,
    letterSpacing: 4.9,
    pipSize: 7,
    sliderWidth: 24,
    sliderHeight: 7,
    sideInset: 17,
    shadowDepth: 12,
    pressDepth: 4,
  ),
  _StartButtonStyleData(
    id: 17,
    name: 'Bubblegum Pop',
    frameColors: [Color(0xFFFFFBFE), Color(0xFFFFD9ED), Color(0xFFFFA7D1)],
    bodyColors: [Color(0xFF91557E), Color(0xFF6A3E5B), Color(0xFF43273A)],
    frameBorderColor: Color(0xFFFFFEFF),
    bodyBorderColor: Color(0xFFA66A95),
    labelColor: Color(0xFFFFFBFF),
    labelShadowColor: Color(0x88190913),
    glossColors: [Color(0xB3FFFFFF), Color(0x10FFFFFF)],
    redLights: [Color(0xFFFF8A7D), Color(0xFFFF5A50)],
    sliderColors: [Color(0xFF95E8FF), Color(0xFF62A2FF)],
    frameRadius: 48,
    bodyRadius: 38,
    width: 272,
    height: 96,
    frameBorderWidth: 1.7,
    bodyBorderWidth: 1.0,
    bodyInset: 9,
    textSize: 26,
    letterSpacing: 4.0,
    pipSize: 8,
    sliderWidth: 30,
    sliderHeight: 8,
    sideInset: 22,
    shadowDepth: 15,
    pressDepth: 5,
  ),
  _StartButtonStyleData(
    id: 18,
    name: 'Cyber Lime',
    frameColors: [Color(0xFFF9FFE5), Color(0xFFD5F687), Color(0xFFA4DD00)],
    bodyColors: [Color(0xFF293313), Color(0xFF181F0B), Color(0xFF090D04)],
    frameBorderColor: Color(0xFFFCFFE7),
    bodyBorderColor: Color(0xFF485F17),
    labelColor: Color(0xFFF8FFE3),
    labelShadowColor: Color(0xCC030500),
    glossColors: [Color(0x88FFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF695D), Color(0xFFFF3D31)],
    sliderColors: [Color(0xFF86EAFF), Color(0xFF0E7CE6)],
    frameRadius: 20,
    bodyRadius: 14,
    width: 268,
    height: 90,
    frameBorderWidth: 2.4,
    bodyBorderWidth: 1.6,
    bodyInset: 7,
    textSize: 24,
    letterSpacing: 5.8,
    pipSize: 7,
    sliderWidth: 24,
    sliderHeight: 7,
    sideInset: 17,
    shadowDepth: 16,
    pressDepth: 5,
    pixelStyle: true,
  ),
  _StartButtonStyleData(
    id: 19,
    name: 'Ocean Cartridge',
    frameColors: [Color(0xFFF4FEFF), Color(0xFFC5F4F7), Color(0xFF7ED9DD)],
    bodyColors: [Color(0xFF3B6467), Color(0xFF29484A), Color(0xFF173032)],
    frameBorderColor: Color(0xFFF8FFFF),
    bodyBorderColor: Color(0xFF4E7F83),
    labelColor: Color(0xFFF7FFFF),
    labelShadowColor: Color(0x99040D0E),
    glossColors: [Color(0x7AFFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF7E71), Color(0xFFE95749)],
    sliderColors: [Color(0xFFA0ECFF), Color(0xFF57A5F2)],
    frameRadius: 30,
    bodyRadius: 20,
    width: 274,
    height: 86,
    frameBorderWidth: 1.8,
    bodyBorderWidth: 1.3,
    bodyInset: 8,
    textSize: 24,
    letterSpacing: 5.0,
    pipSize: 7,
    sliderWidth: 26,
    sliderHeight: 7,
    sideInset: 18,
    shadowDepth: 13,
    pressDepth: 4,
    flatStyle: true,
  ),
  _StartButtonStyleData(
    id: 20,
    name: 'Noir Studio',
    frameColors: [Color(0xFFF8F8FA), Color(0xFFCFD3DA), Color(0xFF8C92A0)],
    bodyColors: [Color(0xFF20242B), Color(0xFF15181E), Color(0xFF090B10)],
    frameBorderColor: Color(0xFFFFFFFF),
    bodyBorderColor: Color(0xFF2F3540),
    labelColor: Color(0xFFF5F7FB),
    labelShadowColor: Color(0xCC000000),
    glossColors: [Color(0x72FFFFFF), Color(0x00FFFFFF)],
    redLights: [Color(0xFFFF7569), Color(0xFFFF4D41)],
    sliderColors: [Color(0xFF85DEFF), Color(0xFF317DDB)],
    frameRadius: 50,
    bodyRadius: 40,
    width: 258,
    height: 84,
    frameBorderWidth: 1.5,
    bodyBorderWidth: 1.0,
    bodyInset: 8,
    textSize: 23,
    letterSpacing: 3.9,
    pipSize: 7,
    sliderWidth: 26,
    sliderHeight: 7,
    sideInset: 19,
    shadowDepth: 16,
    pressDepth: 5,
  ),
];

class TimerHomePage extends StatefulWidget {
  const TimerHomePage({super.key});

  @override
  State<TimerHomePage> createState() => _TimerHomePageState();
}

class _TimerHomePageState extends State<TimerHomePage> {
  static final _StartButtonStyleData _activeStartStyle =
      _startButtonStyles.firstWhere((style) => style.id == 6);

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

  Widget _buildStartButton(_StartButtonStyleData style) {
    final shellRadius = _frameBorderRadiusForStyle(style);
    final keyRadius = _bodyBorderRadiusForStyle(style);
    final labelConfig = _labelConfigForStyle(style);
    final outerShadow = style.flatStyle ? 12.0 : 22.0;
    final outerOffset = _isStartPressed ? style.pressDepth : style.shadowDepth;

    return AnimatedScale(
      scale: _isStartPressed ? 0.97 : 1,
      duration: const Duration(milliseconds: 110),
      curve: Curves.easeOutCubic,
      child: Transform.rotate(
        angle: _shellRotationForStyle(style),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 110),
          curve: Curves.easeOutCubic,
          transform: Matrix4.translationValues(
            0,
            _isStartPressed ? style.pressDepth : 0,
            0,
          ),
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
                      color: Colors.black.withOpacity(
                        style.flatStyle ? 0.16 : 0.28,
                      ),
                      blurRadius: outerShadow,
                      offset: Offset(0, outerOffset),
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(
                        style.flatStyle ? 0.28 : 0.46,
                      ),
                      blurRadius: style.flatStyle ? 5 : 8,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    if (_showFrameInsetForStyle(style))
                      Positioned.fill(
                        child: IgnorePointer(
                          child: Padding(
                            padding: EdgeInsets.all(
                              style.flatStyle ? 7 : style.bodyInset,
                            ),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: keyRadius,
                                border: Border.all(
                                  color: style.frameBorderColor.withOpacity(0.35),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    Padding(
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
                                if (style.pixelStyle) ..._buildPixelCorners(style),
                                if (labelConfig.badge != null)
                                  Align(
                                    alignment: labelConfig.badgeAlignment,
                                    child: Padding(
                                      padding: labelConfig.badgePadding,
                                      child: _buildStyleBadge(style, labelConfig),
                                    ),
                                  ),
                                Align(
                                  alignment: labelConfig.alignment,
                                  child: Padding(
                                    padding: labelConfig.padding,
                                    child: _buildLabelGroup(style, labelConfig),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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

  BorderRadius _frameBorderRadiusForStyle(_StartButtonStyleData style) {
    final radius = style.frameRadius;
    switch (style.id % 6) {
      case 1:
        return BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius * 0.45),
          bottomLeft: Radius.circular(radius * 0.35),
          bottomRight: Radius.circular(radius * 0.85),
        );
      case 2:
        return BorderRadius.only(
          topLeft: Radius.circular(radius * 0.3),
          topRight: Radius.circular(radius * 0.95),
          bottomLeft: Radius.circular(radius * 0.95),
          bottomRight: Radius.circular(radius * 0.3),
        );
      case 3:
        return BorderRadius.only(
          topLeft: Radius.circular(radius * 0.55),
          topRight: Radius.circular(radius * 0.55),
          bottomLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
        );
      case 4:
        return BorderRadius.only(
          topLeft: Radius.circular(radius * 0.9),
          topRight: Radius.circular(radius * 0.22),
          bottomLeft: Radius.circular(radius * 0.22),
          bottomRight: Radius.circular(radius * 0.9),
        );
      case 5:
        return BorderRadius.only(
          topLeft: Radius.circular(radius * 0.35),
          topRight: Radius.circular(radius),
          bottomLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius * 0.35),
        );
      default:
        return BorderRadius.circular(radius);
    }
  }

  BorderRadius _bodyBorderRadiusForStyle(_StartButtonStyleData style) {
    final radius = style.bodyRadius;
    switch (style.id % 6) {
      case 1:
        return BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius * 0.5),
          bottomLeft: Radius.circular(radius * 0.3),
          bottomRight: Radius.circular(radius * 0.8),
        );
      case 2:
        return BorderRadius.only(
          topLeft: Radius.circular(radius * 0.25),
          topRight: Radius.circular(radius * 0.9),
          bottomLeft: Radius.circular(radius * 0.9),
          bottomRight: Radius.circular(radius * 0.25),
        );
      case 3:
        return BorderRadius.only(
          topLeft: Radius.circular(radius * 0.45),
          topRight: Radius.circular(radius * 0.45),
          bottomLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
        );
      case 4:
        return BorderRadius.only(
          topLeft: Radius.circular(radius * 0.95),
          topRight: Radius.circular(radius * 0.18),
          bottomLeft: Radius.circular(radius * 0.18),
          bottomRight: Radius.circular(radius * 0.95),
        );
      case 5:
        return BorderRadius.only(
          topLeft: Radius.circular(radius * 0.3),
          topRight: Radius.circular(radius),
          bottomLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius * 0.3),
        );
      default:
        return BorderRadius.circular(radius);
    }
  }

  double _shellRotationForStyle(_StartButtonStyleData style) {
    const rotations = <int, double>{
      2: -0.012,
      4: 0.016,
      8: -0.02,
      11: -0.024,
      12: 0.01,
      14: 0.014,
      17: -0.018,
      18: 0.012,
      19: -0.01,
      20: 0.008,
    };
    return rotations[style.id] ?? 0;
  }

  bool _showFrameInsetForStyle(_StartButtonStyleData style) {
    return switch (style.id) {
      2 || 3 || 8 || 11 || 12 || 13 || 15 || 18 || 20 => true,
      _ => false,
    };
  }

  _StartLabelConfig _labelConfigForStyle(_StartButtonStyleData style) {
    switch (style.id) {
      case 1:
        return const _StartLabelConfig(
          primary: 'START',
          secondary: 'CLASSIC CUT',
          badge: '01',
          badgeAlignment: Alignment.topRight,
          badgePadding: EdgeInsets.only(top: 10, right: 12),
          secondarySize: 10,
        );
      case 2:
        return const _StartLabelConfig(
          primary: 'PRESS START',
          secondary: '8-BIT MODE',
          badge: 'PIX',
          badgeAlignment: Alignment.topLeft,
          badgePadding: EdgeInsets.only(top: 10, left: 12),
          primarySizeAdjust: -2,
          primaryScaleX: 1.08,
          outline: true,
          secondarySize: 10,
          secondaryLetterSpacing: 2.4,
        );
      case 3:
        return const _StartLabelConfig(
          primary: 'Start',
          secondary: 'SILENT JOY',
          badge: 'MUTE',
          badgeAlignment: Alignment.bottomRight,
          badgePadding: EdgeInsets.only(bottom: 10, right: 12),
          fontWeight: FontWeight.w700,
          primaryScaleX: 0.95,
          secondarySize: 10,
        );
      case 4:
        return const _StartLabelConfig(
          primary: 'START!',
          secondary: 'CANDY CLUB',
          badge: 'POP',
          badgeAlignment: Alignment.topLeft,
          badgePadding: EdgeInsets.only(top: 10, left: 12),
          fontStyle: FontStyle.italic,
          primaryRotation: -0.04,
          secondarySize: 10,
        );
      case 5:
        return const _StartLabelConfig(
          primary: 'READY',
          secondary: 'PRESS TO START',
          badge: 'FAM',
          badgeAlignment: Alignment.topRight,
          badgePadding: EdgeInsets.only(top: 10, right: 12),
          primarySizeAdjust: -1,
          secondarySize: 9,
          secondaryLetterSpacing: 1.8,
        );
      case 6:
        return const _StartLabelConfig(
          primary: 'START',
          primaryScaleX: 1.04,
        );
      case 7:
        return const _StartLabelConfig(
          primary: 'PLAY',
          secondary: 'TAP TO START',
          badge: 'MINT',
          badgeAlignment: Alignment.topLeft,
          badgePadding: EdgeInsets.only(top: 10, left: 12),
          primarySizeAdjust: 1,
          secondarySize: 9,
        );
      case 8:
        return const _StartLabelConfig(
          primary: 'GO START',
          secondary: 'NEON READY',
          badge: 'MAX',
          badgeAlignment: Alignment.topRight,
          badgePadding: EdgeInsets.only(top: 10, right: 12),
          outline: true,
          primarySizeAdjust: -1,
          primaryRotation: -0.03,
          secondarySize: 10,
        );
      case 9:
        return const _StartLabelConfig(
          primary: 'START',
          secondary: 'MONO LAB',
          badge: '09',
          badgeAlignment: Alignment.bottomRight,
          badgePadding: EdgeInsets.only(bottom: 10, right: 12),
          fontWeight: FontWeight.w800,
          secondarySize: 9,
        );
      case 10:
        return const _StartLabelConfig(
          primary: 'START NOW',
          secondary: 'CARBON CUT',
          badge: 'PRO',
          badgeAlignment: Alignment.topLeft,
          badgePadding: EdgeInsets.only(top: 10, left: 12),
          primarySizeAdjust: -2,
          secondarySize: 10,
        );
      case 11:
        return const _StartLabelConfig(
          primary: 'INSERT START',
          secondary: 'HOT ARCADE',
          badge: '11',
          badgeAlignment: Alignment.topRight,
          badgePadding: EdgeInsets.only(top: 9, right: 12),
          outline: true,
          primarySizeAdjust: -3,
          primaryScaleX: 1.06,
          secondarySize: 10,
        );
      case 12:
        return const _StartLabelConfig(
          primary: 'START',
          secondary: 'GLASS MODE',
          badge: 'CALM',
          badgeAlignment: Alignment.topLeft,
          badgePadding: EdgeInsets.only(top: 10, left: 12),
          fontWeight: FontWeight.w700,
          primaryScaleX: 0.92,
          secondarySize: 10,
        );
      case 13:
        return const _StartLabelConfig(
          primary: 'PRESS START',
          secondary: 'BRUT CUT',
          badge: 'RAW',
          badgeAlignment: Alignment.bottomLeft,
          badgePadding: EdgeInsets.only(bottom: 10, left: 12),
          primarySizeAdjust: -2,
          primaryScaleX: 1.04,
          secondarySize: 10,
        );
      case 14:
        return const _StartLabelConfig(
          primary: 'START',
          secondary: 'JOY MIX',
          badge: '14',
          badgeAlignment: Alignment.topRight,
          badgePadding: EdgeInsets.only(top: 10, right: 12),
          fontStyle: FontStyle.italic,
          primaryRotation: 0.03,
          secondarySize: 10,
        );
      case 15:
        return const _StartLabelConfig(
          primary: 'START',
          secondary: 'GOLD EDIT',
          badge: 'VIP',
          badgeAlignment: Alignment.topLeft,
          badgePadding: EdgeInsets.only(top: 10, left: 12),
          outline: true,
          secondarySize: 10,
        );
      case 16:
        return const _StartLabelConfig(
          primary: 'READY',
          secondary: 'FIELD UNIT',
          badge: '16',
          badgeAlignment: Alignment.bottomRight,
          badgePadding: EdgeInsets.only(bottom: 10, right: 12),
          primarySizeAdjust: -1,
          primaryScaleX: 0.98,
          secondarySize: 9,
        );
      case 17:
        return const _StartLabelConfig(
          primary: 'START!',
          secondary: 'POP STAR',
          badge: 'FUN',
          badgeAlignment: Alignment.topRight,
          badgePadding: EdgeInsets.only(top: 11, right: 13),
          fontStyle: FontStyle.italic,
          primaryRotation: -0.02,
          secondarySize: 10,
        );
      case 18:
        return const _StartLabelConfig(
          primary: 'BEGIN',
          secondary: 'LIME RUSH',
          badge: '18',
          badgeAlignment: Alignment.topLeft,
          badgePadding: EdgeInsets.only(top: 10, left: 12),
          outline: true,
          primaryScaleX: 1.1,
          primarySizeAdjust: -1,
          secondarySize: 10,
        );
      case 19:
        return const _StartLabelConfig(
          primary: 'START',
          secondary: 'OCEAN RUN',
          badge: 'WAVE',
          badgeAlignment: Alignment.bottomLeft,
          badgePadding: EdgeInsets.only(bottom: 10, left: 12),
          fontWeight: FontWeight.w800,
          primaryScaleX: 1.03,
          secondarySize: 9,
        );
      case 20:
        return const _StartLabelConfig(
          primary: 'START',
          secondary: 'NOIR EDIT',
          badge: '20',
          badgeAlignment: Alignment.topRight,
          badgePadding: EdgeInsets.only(top: 10, right: 12),
          fontWeight: FontWeight.w600,
          primaryScaleX: 0.9,
          secondarySize: 9,
        );
      default:
        return const _StartLabelConfig(primary: 'START');
    }
  }

  Widget _buildStyleBadge(
    _StartButtonStyleData style,
    _StartLabelConfig labelConfig,
  ) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: style.labelColor.withOpacity(style.flatStyle ? 0.12 : 0.16),
        borderRadius: BorderRadius.circular(style.pixelStyle ? 8 : 999),
        border: Border.all(
          color: style.labelColor.withOpacity(0.28),
          width: 0.9,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          labelConfig.badge!,
          style: TextStyle(
            color: style.labelColor.withOpacity(0.88),
            fontSize: 9,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.3,
          ),
        ),
      ),
    );
  }

  Widget _buildLabelGroup(
    _StartButtonStyleData style,
    _StartLabelConfig labelConfig,
  ) {
    final primary = _buildPrimaryLabel(style, labelConfig);

    return Transform.rotate(
      angle: labelConfig.primaryRotation,
      child: Transform.scale(
        scaleX: labelConfig.primaryScaleX,
        scaleY: labelConfig.primaryScaleY,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (labelConfig.secondary != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  labelConfig.secondary!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: style.labelColor.withOpacity(0.72),
                    fontSize: labelConfig.secondarySize,
                    fontWeight: FontWeight.w800,
                    letterSpacing: labelConfig.secondaryLetterSpacing,
                  ),
                ),
              ),
            primary,
          ],
        ),
      ),
    );
  }

  Widget _buildPrimaryLabel(
    _StartButtonStyleData style,
    _StartLabelConfig labelConfig,
  ) {
    final textStyle = TextStyle(
      color: style.labelColor,
      fontSize: style.textSize + labelConfig.primarySizeAdjust,
      fontWeight: labelConfig.fontWeight,
      fontStyle: labelConfig.fontStyle,
      letterSpacing: style.letterSpacing + labelConfig.letterSpacingAdjust,
      shadows: [
        Shadow(
          color: style.labelShadowColor,
          blurRadius: style.flatStyle ? 1 : 6,
          offset: Offset(0, style.flatStyle ? 1 : 2),
        ),
      ],
    );

    if (!labelConfig.outline) {
      return Text(
        labelConfig.primary,
        textAlign: TextAlign.center,
        style: textStyle,
      );
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Text(
          labelConfig.primary,
          textAlign: TextAlign.center,
          style: textStyle.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = style.pixelStyle ? 2.4 : 1.8
              ..color = style.labelShadowColor.withOpacity(0.85),
            shadows: const [],
          ),
        ),
        Text(
          labelConfig.primary,
          textAlign: TextAlign.center,
          style: textStyle,
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
            Center(child: _buildStartButton(_activeStartStyle)),
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

class _StartLabelConfig {
  const _StartLabelConfig({
    required this.primary,
    this.secondary,
    this.badge,
    this.badgeAlignment = Alignment.topLeft,
    this.badgePadding = EdgeInsets.zero,
    this.alignment = Alignment.center,
    this.padding = EdgeInsets.zero,
    this.fontStyle = FontStyle.normal,
    this.fontWeight = FontWeight.w900,
    this.primaryScaleX = 1,
    this.primaryScaleY = 1,
    this.primaryRotation = 0,
    this.primarySizeAdjust = 0,
    this.letterSpacingAdjust = 0,
    this.secondarySize = 10,
    this.secondaryLetterSpacing = 2.0,
    this.outline = false,
  });

  final String primary;
  final String? secondary;
  final String? badge;
  final Alignment badgeAlignment;
  final EdgeInsets badgePadding;
  final Alignment alignment;
  final EdgeInsets padding;
  final FontStyle fontStyle;
  final FontWeight fontWeight;
  final double primaryScaleX;
  final double primaryScaleY;
  final double primaryRotation;
  final double primarySizeAdjust;
  final double letterSpacingAdjust;
  final double secondarySize;
  final double secondaryLetterSpacing;
  final bool outline;
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
