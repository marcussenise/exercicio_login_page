import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(137, 115, 246, 235),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.login_rounded),
        onPressed: (){
          Navigator.pushNamedAndRemoveUntil(context, ('/login'), (route) => false);
        }
    ));
  }
}