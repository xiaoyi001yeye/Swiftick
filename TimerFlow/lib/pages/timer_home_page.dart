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
  Duration? _leftStoppedAt;
  Duration? _rightStoppedAt;

  bool get _isRunning => _startedAt != null;
  bool get _leftLocked => _leftStoppedAt != null;
  bool get _rightLocked => _rightStoppedAt != null;

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }

  void _startTimer() {
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

    if (willCompleteRound) {
      _resetToIdle();
      return;
    }

    setState(() {
      if (isLeft) {
        _leftStoppedAt = capture;
      } else {
        _rightStoppedAt = capture;
      }
    });
  }

  void _resetToIdle() {
    _ticker?.cancel();
    setState(() {
      _elapsed = Duration.zero;
      _leftStoppedAt = null;
      _rightStoppedAt = null;
      _startedAt = null;
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

  @override
  Widget build(BuildContext context) {
    if (!_isRunning) {
      return Scaffold(
        body: ColoredBox(
          color: Colors.black,
          child: Center(
            child: SizedBox(
              width: 240,
              height: 88,
              child: ElevatedButton(
                onPressed: _startTimer,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF60B49D),
                  foregroundColor: Colors.white,
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
        ),
      );
    }

    return Scaffold(
      body: Row(
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
      ),
    );
  }
}
