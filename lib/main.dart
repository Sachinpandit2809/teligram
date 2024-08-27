import 'package:flutter/material.dart';
import 'package:teligram/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              iconColor:
                  WidgetStateColor.resolveWith((states) => Color(0xFFFFFFFF))),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homescreen(),
    );
  }
}
