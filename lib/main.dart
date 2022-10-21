import 'package:ex_login/pages/home_page.dart';
import 'package:ex_login/pages/login_page.dart';
import 'package:ex_login/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/home': (_) => const HomePage(),
        '/login': (_) => const LoginPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}