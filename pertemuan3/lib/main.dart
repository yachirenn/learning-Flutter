// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

final ButtonStyle modernButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
    (states) => states.contains(MaterialState.disabled) ? Colors.blueGrey[200] : Colors.blue,
  ),
  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20, vertical: 14)),
  textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
  elevation: MaterialStateProperty.resolveWith<double>(
    (states) => states.contains(MaterialState.pressed) ? 2 : 6,
  ),
  shadowColor: MaterialStateProperty.all(Colors.black45),
  overlayColor: MaterialStateProperty.resolveWith<Color?>(
    (states) => states.contains(MaterialState.pressed) ? Colors.white.withOpacity(0.08) : null,
  ),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(style: modernButtonStyle),
      ),
      home: const LoginPage(),
    );
  }
}