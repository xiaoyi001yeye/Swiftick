import 'package:flutter/material.dart';

import 'pages/timer_home_page.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(const TimerFlowApp());
}

class TimerFlowApp extends StatelessWidget {
  const TimerFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimerFlow',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const TimerHomePage(),
    );
  }
}
