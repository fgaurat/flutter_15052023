import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:todolist_http_app/models/todo.dart';

class TodoDetail extends StatelessWidget {
  const TodoDetail({Key? key}) : super(key: key);
  // const TodoDetail({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Todo todo = ModalRoute.of(context)!.settings.arguments as Todo;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("TodoDetail"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Todo title : ${todo.title}"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))
          ],
        ),
      ),
    );
  }
}
