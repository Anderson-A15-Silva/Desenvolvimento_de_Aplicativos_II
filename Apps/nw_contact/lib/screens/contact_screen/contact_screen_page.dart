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
        title: const Text('Contact', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image.asset('assets/$imagePath'),
                  Icon(Icons.account_circle, size: 240.0),
                  SizedBox(height: 40.0,),
                  Text(
                    'Name',
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: 15.0
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                    'Number',
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: 15.0
                    ),
                    textAlign: TextAlign.start,
                  )
                ],
              )
          )
      ),
    );
  }
}
