import 'package:flutter/material.dart';
import 'package:hello_world/counter_root_state.dart';
import 'dart:developer' as developer;
import 'package:hello_world/my_counter.dart';
import 'dart:io' show Platform;

import 'package:hello_world/my_text_button.dart';
import 'package:hello_world/say_hello.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              developer.log("onPressed", name: "hello.app");
            },
            icon: const Icon(Icons.menu),
            tooltip: "Navigation",
          ),
          title: const Text('Home'),
        ),
        body: const MainApp(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Container(
          color: Colors.red,
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text("Android ${Platform.isAndroid.toString()}"),
            Text("IOS ${Platform.isIOS.toString()}"),
            const Text('Hello 03')
          ]),
        ),
        const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(Icons.home),
          Icon(Icons.business),
          Icon(Icons.alarm),
        ]),
        const Center(child: MyTextButton()),
        const Center(child: Text("MyCounter Stateful")),
        const MyCounter(),
        const Center(child: Text("Lifting State Up")),
        const CounterRootState(),
        const Center(child: Text("SayHello")),
        const SayHello(),
      ],
    );
  }
}
