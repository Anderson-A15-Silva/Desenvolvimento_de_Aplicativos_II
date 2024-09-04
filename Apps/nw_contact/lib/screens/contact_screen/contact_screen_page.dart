import 'package:flutter/material.dart';

class ContactScreenPage extends StatefulWidget {
  const ContactScreenPage({super.key});

  @override
  State<ContactScreenPage> createState() => _ContactScreenPageState();
}

class _ContactScreenPageState extends State<ContactScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContactScreenPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ContactScreenPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
