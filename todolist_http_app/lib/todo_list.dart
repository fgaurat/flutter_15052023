import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:todolist_http_app/models/todo.dart';
import 'package:todolist_http_app/todo_detail.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  Future<List<Todo>> _loadData() async {
    String url = "";
    if (Platform.isAndroid) {
      url = dotenv.get('ANDROID_URL_TODOS');
    } else if (Platform.isIOS) {
      url = dotenv.get('IOS_URL_TODOS');
    }

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List todoJsonList = jsonDecode(response.body);
      return todoJsonList.map((todoJson) => Todo.fromJson(todoJson)).toList();
    } else {
      throw Exception("Failed to load data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Todo>>(
        future: _loadData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      onTap: () {
                        // Navigator
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => TodoDetail(
                        //         todo: snapshot.data?[index] ??
                        //             Todo(0, "", false)),
                        //   ),
                        // );

                        //Named routes

                        Navigator.pushNamed(context, "/detail",
                            arguments:
                                snapshot.data?[index] ?? Todo(0, "", false));
                      },
                      title: Text(snapshot.data?[index].title ?? ""));
                });
          } else if (snapshot.hasError) {
            return const Text("erreur");
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
