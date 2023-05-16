import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class IncCounterIcon extends StatelessWidget {
  final Function incClick;
  final int cpt;

  const IncCounterIcon({Key? key, required this.incClick, required this.cpt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        incClick();
      },
      icon: const Icon(Icons.plus_one),
    );
  }
}
