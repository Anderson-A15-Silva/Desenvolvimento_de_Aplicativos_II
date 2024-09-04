import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/models/note_model.dart';
import 'package:todoapp/screens/home_screen/home_screen_page.dart';
import 'package:todoapp/database/database.dart';

class AddNoteScreen extends StatefulWidget {
  Note? note;
  Function? updateNoteList;

  AddNoteScreen({this.note, this.updateNoteList});

  @override
  State<AddNoteScreen> createState() => AddNoteScreenState();
}

class AddNoteScreenState extends State<AddNoteScreen> {
  Note? note;
  Function? updateNoteList;

  String _title = '';
  String _priority = 'Low';
  DateTime _date = DateTime.now();
  String btnText = 'Add Note';
  String titleText = 'Add Note';
  late Future<List<Note>> _noteList;

  final TextEditingController _dateController = TextEditingController();
  final DateFormat _dateFormatter = DateFormat('MMM dd, yyyy');
  final List<String> _priorities = ['Low', 'Medium', 'High'];

  _updateNoteList() {
    _noteList = DatabaseHelper.instance.getNoteList();
  }

  _handleDatePicker(BuildContext context) async {
    final DateTime? date = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (date != null && date != _date) {
      setState() {
        _date = date;
      }

      _dateController.text = _dateFormatter.format(date);
    }
  }

  @override
  void initState() {
    super.initState();

    if (widget.note != null) {
      _title = widget.note!.title!;
      _date = widget.note!.date!;
      _priority = widget.note!.priority!;

      setState(() {
        btnText = 'Update Note';
        titleText = 'Update Note';
      });
    } else {
      setState(() {
        btnText = 'Add Note';
        titleText = 'Add Note';
      });
    }

    _dateController.text = _dateFormatter.format(_date);
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Note? note;
    Function? updateNoteList;

    final _formKey = GlobalKey<FormState>();
    const String titleText = 'Add Note';

    final TextEditingController dateController = TextEditingController();
    final DateFormat dateFormatter = DateFormat('MMM dd, yyyy');
    final List<String> priorities = ['Low', 'Medium', 'High'];

    handleDatePicker() async {
      final DateTime? date = await showDatePicker(
          context: context,
          initialDate: _date,
          firstDate: DateTime(2000),
          lastDate: DateTime(2100));
      if (date != null && date != _date) {
        setState() {
          _date = date;
        }

        dateController.text = dateFormatter.format(date);
      }
    }

    _delete() {
      DatabaseHelper.instance.deleteNote(widget.note!.id!);

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const HomeScreen()));

      widget.updateNoteList!();
    }

    _submit() {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        print('$_title, $_date, $_priority');

        Note note = Note(title: _title, date: _date, priority: _priority);

        if (widget.note == null) {
          note.status = 0;
          DatabaseHelper.instance.insertNote(note);

          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const HomeScreen()));
        } else {
          note.id = widget.note!.id;
          note.status = widget.note!.status;
          DatabaseHelper.instance.updateNote(note);

          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const HomeScreen()));
        }

        widget.updateNoteList!();
      }
    }

    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
                child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => const HomeScreen())),
                    child: Icon(Icons.arrow_back,
                        size: 30.0, color: Theme.of(context).primaryColor),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    titleText,
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: TextFormField(
                              style: const TextStyle(fontSize: 18.0),
                              decoration: InputDecoration(
                                  labelText: 'Title',
                                  labelStyle: const TextStyle(fontSize: 18.0),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                              validator: (input) => input!.trim().isEmpty
                                  ? 'Please enter a note title'
                                  : null,
                              onSaved: (input) => _title = input!,
                              initialValue: _title,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: TextFormField(
                              readOnly: true,
                              controller: dateController,
                              style: const TextStyle(fontSize: 18.0),
                              onTap: handleDatePicker,
                              decoration: InputDecoration(
                                  labelText: 'Date',
                                  labelStyle: const TextStyle(fontSize: 18.0),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: DropdownButtonFormField(
                              isDense: true,
                              icon: const Icon(Icons.arrow_drop_down_circle),
                              iconSize: 22.0,
                              iconEnabledColor: Theme.of(context).primaryColor,
                              items: _priorities.map((String priority) {
                                return DropdownMenuItem(
                                  value: priority,
                                  child: Text(
                                    priority,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                );
                              }).toList(),
                              style: const TextStyle(fontSize: 18.0),
                              decoration:
                                  const InputDecoration(labelText: 'Priority'),
                              validator: (input) => _priority == null
                                  ? 'Please select a priority level'
                                  : null,
                              onChanged: (value) {
                                setState(() {
                                  _priority = value.toString();
                                });
                              },
                              value: _priority,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            height: 60.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(30.0)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                              ),
                              child: Text(
                                btnText,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                              onPressed: _submit,
                            ),
                          ),
                          widget.note != null
                              ? Container(
                                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                                  height: 60.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepPurple,
                                    ),
                                    child: const Text(
                                      'Delete Note',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.0),
                                    ),
                                    onPressed: _delete,
                                  ))
                              : const SizedBox.shrink(),
                        ],
                      ))
                ],
              ),
            ))));
  }
}
