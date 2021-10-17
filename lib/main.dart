import 'package:flutter/material.dart';
import 'package:project/Screens/Inventory/components/product_detail_screen.dart';
import 'package:project/Screens/Inventory/components/products.dart';
import 'package:project/Screens/Welcome/welcome_screen.dart';
import 'package:project/constants.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> Products(),
      child: MaterialApp(
      title: 'MREL',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
      routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          }
      ),
    );
  }
}
