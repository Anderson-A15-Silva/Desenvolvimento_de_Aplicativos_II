import 'dart:core';

class Contact {
  int? id;
  String? name;
  int? number;

  Contact({this.name, this.number});

  Contact.withId({this.id, this.name, this.number});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};

    if (id != null) {
      map['id'] = id;
    }

    map['name'] = name;
    map['number'] = number;

    return map;
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact.withId(
      id: map['id'],
      name: map['name'],
      number: map['number']
    );
  }
}