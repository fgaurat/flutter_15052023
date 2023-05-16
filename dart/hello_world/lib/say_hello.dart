import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class SayHello extends StatefulWidget {
  const SayHello({Key? key}) : super(key: key);

  @override
  State<SayHello> createState() => _SayHelloState();
}

class _SayHelloState extends State<SayHello> {
  String _name = "";

  _setName(value) {
    setState(() {
      _name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 300,
          child: TextField(
            onSubmitted: _setName,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),
        ),
        Text("Hello $_name")
      ],
    );
  }
}
