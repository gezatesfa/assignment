import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Geza Tesfa"),
                accountEmail: Text("gezatesfa795@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset("assets/image/geza.jpg"),
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Dashbord"),
          ),
          ListTile(
            leading: Icon(Icons.data_object),
            title: Text("Items"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          ),
          ListTile(
            leading: Icon(Icons.person_3),
            title: Text("Account"),
          ),
        ],
      ),
    );
  }
}
