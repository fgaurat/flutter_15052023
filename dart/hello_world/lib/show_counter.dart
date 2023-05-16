import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class ShowCounter extends StatelessWidget {
  final int cpt;

  const ShowCounter({Key? key, required this.cpt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Value : $cpt");
  }
}
