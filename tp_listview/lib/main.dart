import 'package:flutter/material.dart';
import 'package:tp_listview/my_list_image.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("TP List View"),
          ),
          body: const MyListImage()),
    );
  }
}
