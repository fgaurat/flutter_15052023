import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class MyListImage extends StatelessWidget {
  const MyListImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      for (var i = 0; i <= 20; i++) "https://picsum.photos/250?image=$i"
    ];

    // Image.network(images[index])
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) => ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(images[index]),
              ),
              trailing: const Icon(Icons.account_tree),
              title: Text("Item $index"),
            ));
  }
}
