import 'dart:developer' as developer;

import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
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
        ElevatedButton(onPressed: _increment, child: const Text("Increment")),
        Text("Value : $_cpt")
      ],
    );
  }
}


// class MyCounter extends StatelessWidget {
//   int _cpt = 0;

//   MyCounter({Key? key}) : super(key: key);

//   void _increment() {
//     _cpt++;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         ElevatedButton(onPressed: _increment, child: const Text("Increment")),
//         Text("Value : $_cpt")
//       ],
//     );
//   }
// }
