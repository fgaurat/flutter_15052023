class Todo {
  final int id;
  final String title;
  final bool done;

  Todo(this.id, this.title, this.done);
  Todo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        done = json['completed'];
}
