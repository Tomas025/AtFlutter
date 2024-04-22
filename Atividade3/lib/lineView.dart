import 'package:flutter/material.dart';

class Item {
  final String title;
  final String imageUrl;

  Item({required this.title, required this.imageUrl});
}

class ItemView extends StatelessWidget {
  final Item item;

  const ItemView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              item.imageUrl,
              width: 400,
              height: 400,
            ),
            const SizedBox(height: 20),
            Text(
              item.title,
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
