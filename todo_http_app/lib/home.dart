import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:todo_http_app/models/todo.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<Todo> _loadData() async {
    Uri url = Uri.parse("http://localhost:3000/todos/1");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Todo.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<Todo>(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data?.title ?? "");
        } else if (snapshot.hasError) {
          return const Text("erreur");
        } else {
          return const CircularProgressIndicator();
        }
      },
      future: _loadData(),
    ));
  }
}
