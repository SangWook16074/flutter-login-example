import 'package:flutter/material.dart';
import 'package:flutter_login_example/src/app.dart';
import 'package:flutter_login_example/src/ui/login_page.dart';
import 'package:flutter_login_example/src/ui/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const LoginPage(),
        "/main": (context) => const MainPage(),
      },
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: "/",
    );
  }
}
