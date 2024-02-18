import 'package:flutter/material.dart';
import 'package:safeer_app/authenticate/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          listTileTheme: const ListTileThemeData(
              tileColor: Color.fromARGB(255, 235, 233, 233)),
          colorScheme: const ColorScheme.light(
              background: Color.fromARGB(255, 207, 232, 228)),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 46, 137, 128),
          ),
          useMaterial3: true,
        ),
        home: const SplashSceen());
  }
}
