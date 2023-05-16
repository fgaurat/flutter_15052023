import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries =
        List<String>.generate(1000, (index) => "Item $index");

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("TP List View"),
          ),
          body: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text("Value ${entries[index]} "));
              })),
    );
  }
}
