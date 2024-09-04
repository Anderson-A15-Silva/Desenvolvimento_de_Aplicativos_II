import 'package:flutter/material.dart';
import 'package:nw_contact/screens/home_screen/home_screen_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NW Contact',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red
      ),
      home: const Scaffold(
        body: Center(
          child: HomeScreenPage(),
        ),
      ),
    );
  }
}
