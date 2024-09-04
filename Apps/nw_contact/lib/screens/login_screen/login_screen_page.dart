import 'package:flutter/material.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({super.key});

  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreenPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoginScreenPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
