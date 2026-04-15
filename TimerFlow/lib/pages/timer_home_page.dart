import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

class TimerHomePage extends StatefulWidget {
  const TimerHomePage({super.key});

  @override
  State<TimerHomePage> createState() => _TimerHomePageState();
}

class _TimerHomePageState extends State<TimerHomePage> {
  Timer? _ticker;
  Duration _elapsed = Duration.zero;
  DateTime? _startedAt;
  bool _isRunning = false;

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }

  void _toggleTimer() {
    if (_isRunning) {
      _ticker?.cancel();
      setState(() {
        _isRunning = false;
        _startedAt = null;
      });
      return;
    }

    final now = DateTime.now();
    _startedAt = now.subtract(_elapsed);
    _ticker = Timer.periodic(const Duration(milliseconds: 100), (_) {
      final startedAt = _startedAt;
      if (startedAt == null || !mounted) {
        return;
      }

      setState(() {
        _elapsed = DateTime.now().difference(startedAt);
      });
    });

    setState(() {
      _isRunning = true;
    });
  }

  String get _formattedTime {
    final hours = _elapsed.inHours.toString().padLeft(2, '0');
    final minutes = (_elapsed.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (_elapsed.inSeconds % 60).toString().padLeft(2, '0');
    final centiseconds =
        ((_elapsed.inMilliseconds % 1000) ~/ 10).toString().padLeft(2, '0');
    return '$hours:$minutes:$seconds.$centiseconds';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: isDark
                ? const [
                    Color(0xFF0F172A),
                    Color(0xFF132238),
                    Color(0xFF16302B),
                  ]
                : const [
                    Color(0xFFF8FCFB),
                    Color(0xFFEAF6F2),
                    Color(0xFFDCEFEA),
                  ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'TimerFlow',
                  style: theme.textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  '按一下开始，再按一下停止。',
                  style: theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 28,
                    ),
                    child: Column(
                      children: [
                        Text(
                          _formattedTime,
                          style: theme.textTheme.headlineLarge?.copyWith(
                            fontFeatures: const [FontFeature.tabularFigures()],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 14),
                        Text(
                          _isRunning ? '计时进行中' : '计时已停止',
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: _toggleTimer,
                  style: theme.elevatedButtonTheme.style?.copyWith(
                    backgroundColor: MaterialStatePropertyAll(
                      _isRunning
                          ? const Color(0xFF17312A)
                          : const Color(0xFF60B49D),
                    ),
                  ),
                  child: Text(_isRunning ? '停止计时' : '开始计时'),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
