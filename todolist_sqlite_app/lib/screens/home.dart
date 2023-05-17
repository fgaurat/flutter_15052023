import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:todolist_sqlite_app/models/todo.dart';
import 'package:todolist_sqlite_app/models/todo_dao.dart';
import 'package:todolist_sqlite_app/screens/todo_form.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TodoDAO dao = TodoDAO();
  List<Todo> todoList = [
    Todo(title: "Flutter", completed: false),
    Todo(title: "Dart", completed: false)
  ];

  void _updateListView() {
    dao.open();
    dao.getTodoList().then((values) => setState(() {
          todoList = values;
        }));
  }

  @override
  Widget build(BuildContext context) {
    _updateListView();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context, position) {
                return ListTile(title: Text(todoList[position].title));
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TodoForm()));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
