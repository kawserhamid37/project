import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project/Screens/Inventory/components/category.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff555555),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text("Inventory"),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Categories',style: TextStyle(fontSize: 30),),
              Category(),
            ],
          ),
        ),
      )
    );
  }
}
