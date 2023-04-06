import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List of Items',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '{ }     List of Items'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  List<Item> items = [
    Item(name: 'Desktop', icon: Icons.computer, price: '\$200.0'),
    Item(name: 'Smart Phone', icon: Icons.smartphone, price: '\$1000.0'),
    Item(name: 'Cable', icon: Icons.cable, price: '\$10.0'),
    Item(name: 'Mouse', icon: Icons.mouse, price: '\$200.0'),
    Item(name: 'Smart Screen', icon: Icons.smart_screen, price: '\$200.0'),
    Item(name: 'Tablet', icon: Icons.tablet_mac, price: '\$1000.0'),
    Item(name: 'Camera', icon: Icons.camera_alt, price: '\$1000.0'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Icon(items[index].icon, color: Colors.black),
              title: Text(items[index].name),
              subtitle: Text(items[index].price),
              trailing: IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}

class Item {
  final String name;
  final IconData icon;
  final String price;

  Item({required this.name, required this.icon, required this.price});
}
