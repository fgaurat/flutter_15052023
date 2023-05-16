import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:hello_world/inc_counter.dart';
import 'package:hello_world/inc_counter_icon.dart';
import 'package:hello_world/show_counter.dart';

class CounterRootState extends StatefulWidget {
  const CounterRootState({Key? key}) : super(key: key);

  @override
  State<CounterRootState> createState() => _CounterRootStateState();
}

class _CounterRootStateState extends State<CounterRootState> {
  int _cpt = 0;

  void _increment() {
    developer.log("$_cpt");
    setState(() {
      _cpt++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IncCounter(incClick: _increment, cpt: _cpt),
        IncCounterIcon(incClick: _increment, cpt: _cpt),
        ShowCounter(cpt: _cpt)
      ],
    );
  }
}
