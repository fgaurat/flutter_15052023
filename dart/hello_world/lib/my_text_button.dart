import 'dart:developer';

import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log("tap");
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.lightGreen[500]),
        child: const Center(child: Text('Cliquez ici !')),
      ),
    );
  }
}
