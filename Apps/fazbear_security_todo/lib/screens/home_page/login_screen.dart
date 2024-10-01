import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Image.asset(
                'assets/image.png',
                width: 214,
                height: 302,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 14),
            SizedBox(
              width: 200,
              child: TextField(
                controller: _controller1,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(),
                    labelText: 'Digite seu email',
                    labelStyle: TextStyle(color: Theme.of(context).hintColor)),
                keyboardType: TextInputType.text,
              ),
            ),
            const SizedBox(height: 14),
            SizedBox(
              width: 200,
              child: TextField(
                controller: _controller2,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(),
                    labelText: 'Digite sua senha',
                    labelStyle: TextStyle(color: Theme.of(context).hintColor)),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            const SizedBox(height: 20),
            // Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () {},
              child: Text(
                'Iniciar',
                style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
