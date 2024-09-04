import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final String name;
  final int number;

  const ContactCard({super.key, required this.name, required this.number});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(Icons.account_circle, size: 30.0),
            ),
            const SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic
                  ),
                  ),
                Text(
                  number.toString(),
                    textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal
                  )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

