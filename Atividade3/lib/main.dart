import 'package:flutter/material.dart';
import 'package:atividade3/lineView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Lista de Itens',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      title: 'Solo Leveling',
      imageUrl:
          'https://i0.wp.com/www.otakupt.com/wp-content/uploads/2020/04/Solo-Leveling-ser%C3%A1-publicado-pela-editora-NewPOP.jpg?resize=696%2C940&ssl=1',
    ),
    Item(
      title: 'The Beginning After the End',
      imageUrl:
          'https://i.pinimg.com/736x/84/b9/f5/84b9f53d136f973bb6b067f90aa6b370.jpg',
    ),
    Item(
      title: 'Nano Machine',
      imageUrl:
          'https://i.pinimg.com/originals/7d/12/0f/7d120ff90b5f744bd1cbdc3407583a91.jpg',
    ),
    Item(
      title: 'Eleeced',
      imageUrl:
          'https://i.pinimg.com/236x/93/f9/c0/93f9c0bd5949538f1a2e0240dc607c59.jpg',
    ),
  ];
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: const Text('Lista de Itens'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].title),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(items[index].imageUrl),
            ),
            onTap: () {
              _showItemDetails(context, items[index]);
            },
          );
        },
      ),
    );
  }
}

void _showItemDetails(BuildContext context, Item item) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ItemView(item: item),
    ),
  );
}
