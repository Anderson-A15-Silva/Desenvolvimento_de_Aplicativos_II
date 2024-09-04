import 'package:flutter/material.dart';

class AccountScreenPage extends StatelessWidget {
  const AccountScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AccountScreenPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AccountScreenPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
