import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nw_contact/components/contact_card.dart';
import 'package:nw_contact/models/contact_model.dart';
import 'package:nw_contact/database/database.dart';
import 'package:nw_contact/screens/modify_screen/modify_screen_page.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  late Future<List<Contact>> _contactList;
  final DatabaseHelper _databaseHelper = DatabaseHelper.instance;

  @override
  void initState() {
    super.initState();
    _updateContactList();
  }

  _updateContactList() {
    setState(() {
      _contactList = _databaseHelper.getContactList();
    });
  }

  Widget _buildContact(Contact contact) {
    print('Building contact: ${contact.name}, ${contact.number}');
    if (contact.name == null || contact.number == null) {
      print('Contact has null values: $contact');
      return const SizedBox.shrink(); // Return an empty widget if contact has null values
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          ContactCard(name: contact.name!, number: contact.number!),
          const Divider(
            height: 5.0,
            color: Colors.deepOrangeAccent,
            thickness: 2.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Contacts',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (_) => ModifyScreenPage(updateContactList: _updateContactList),
            ),
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: FutureBuilder(
        future: _contactList,
        builder: (context, AsyncSnapshot snapshot) {
          print('Snapshot data: ${snapshot.data}');
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data.isEmpty) {
            return const Center(
              child: Text(
                'No contacts available.',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            );
          } else {
            return ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildContact(snapshot.data[index]);
              },
            );
          }
        },
      ),
    );
  }
}
