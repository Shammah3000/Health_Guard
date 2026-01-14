import 'package:flutter/material.dart';
import 'package:health_guard/core/theme/app_theme.dart';
import 'package:provider/provider.dart';
import '../features/vitals/logic/vitals_provider.dart';
import '../features/vitals/screens/vitals_dashboard.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => VitalsProvider(),
      child: const HealthGuardApp(),
    ),
  );
}

class HealthGuardApp extends StatelessWidget {
  const HealthGuardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Guard',
      debugShowCheckedModeBanner: false,
      home: const VitalsDashboard(),
      theme: appTheme ,
    );
  }
}