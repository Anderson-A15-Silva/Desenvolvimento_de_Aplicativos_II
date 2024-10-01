import 'package:flutter/material.dart';

class AccountScreenPage extends StatelessWidget {
  AccountScreenPage({super.key, this.imagePath});

  String? imagePath;

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
