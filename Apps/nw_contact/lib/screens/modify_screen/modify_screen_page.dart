import 'package:flutter/material.dart';
import 'package:nw_contact/components/contact_input.dart';
import 'package:nw_contact/models/contact_model.dart';
import 'package:nw_contact/database/database.dart';
import 'package:nw_contact/screens/home_screen/home_screen_page.dart';

class ModifyScreenPage extends StatefulWidget {
  final Contact? contact;
  final Function? updateContactList;

  ModifyScreenPage({super.key, this.contact, this.updateContactList});

  @override
  State<ModifyScreenPage> createState() => _ModifyScreenPageState();
}

class _ModifyScreenPageState extends State<ModifyScreenPage> {
  String contactName = 'Anyone';
  int contactNumber = 000000000;
  late Future<List<Contact>> _contactList;
  final DatabaseHelper _databaseHelper = DatabaseHelper.instance;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _updateContactList();
  }

  _updateContactList() {
    _contactList = DatabaseHelper.instance.getContactList();
  }

  _delete() {
    DatabaseHelper.instance.deleteContact(widget.contact!.id!);

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const HomeScreenPage()));

    widget.updateContactList!();
  }

  _submit(String contactName, int contactNumber) async {
    await _databaseHelper.insertContact(Contact(name: contactName, number: contactNumber));
    _updateContactList();
    Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (_) => HomeScreenPage()), (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Contact',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Column(
              children: [
                ContactInput(
                  hintText: 'Enter contact name',
                  labelText: 'Name',
                  isNumber: false,
                  onSaved: (value) => contactName = value!,
                ),
                ContactInput(
                  hintText: 'Enter contact number',
                  labelText: 'Number',
                  isNumber: true,
                  onSaved: (value) => contactNumber = int.parse(value!),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      _submit(contactName, contactNumber);
                    }
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
