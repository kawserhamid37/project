import 'package:flutter/material.dart';
import 'package:project/Screens/Inventory/inventory_page.dart';
import 'package:project/Screens/Profile/profile_page.dart';
import 'package:project/Screens/Project/project_page.dart';

class Body extends StatelessWidget {

  static const appTitle = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appTitle),
      backgroundColor: Colors.orangeAccent,),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
              child: Text('Momen Real Estates LTD'),
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            ListTile(
              title: const Text('Inventory'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inventory()),
                );
              },
            ),
            ListTile(
              title: const Text('Project'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Project()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
