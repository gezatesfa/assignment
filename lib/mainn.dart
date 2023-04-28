import 'package:flutter/material.dart';

import 'navbar.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatefulWidget {
  const MyAPP({super.key});

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: Navbar(),
          appBar: AppBar(
            centerTitle: true,
            title: Row(
              children: [
                Icon(
                  Icons.data_object,
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Text("List of items"),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () => {},
              )
            ],
          ),
          body: Home()),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}
