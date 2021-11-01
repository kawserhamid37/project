import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project/Screens/Inventory/components/category.dart';
import 'package:project/Screens/Inventory/components/products_grid.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isSearching = false;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFFD78F21),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: !isSearching ? Text("Inventory")
              : Text('Searching Products'), //Text will be change for searching
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10.0),
                Center(
                  child: Text(
                    'Categories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10.0),
                Category(),
              ],
            ),
          ),
        ));
  }
}
