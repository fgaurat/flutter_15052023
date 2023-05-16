import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class IncCounter extends StatelessWidget {
  final Function incClick;
  final int cpt;

  const IncCounter({Key? key, required this.incClick, required this.cpt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          incClick();
        },
        child: Text("$cpt"));
  }
}
