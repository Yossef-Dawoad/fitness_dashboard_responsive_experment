import 'package:flutter/material.dart';

import 'constants/colors/colors.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive DashBoard',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        // scaffoldBackgroundColor: const Color(0xFF15131c),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Pallete.primary,
          secondary: Pallete.secondary,
          tertiary: Pallete.tertiary,
          surface: Pallete.surface,
        ),
        useMaterial3: true,
      ),
      home: const MyMainPage(),
    );
  }
}
