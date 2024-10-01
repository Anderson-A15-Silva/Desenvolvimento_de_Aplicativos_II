class Task {
  int? id;
  String? title;
  String? data;

  Task({this.title, this.data});

  Task.withId({this.id, this.title, this.data});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();

    if (id != null) {
      map['id'] = id!;
    }

    map['title'] = title!;
    map['date'] = data!;

    return map;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task.withId(
      id: map['id'],
      title: map['title'],
      data: map['date'],
    );
  }
}
