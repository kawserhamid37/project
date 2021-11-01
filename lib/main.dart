import 'package:flutter/material.dart';
import 'package:project/Screens/Inventory/components/cart.dart';
import 'package:project/Screens/Inventory/components/cart_screen.dart';
import 'package:project/Screens/Inventory/components/orders_screen.dart';
import 'package:project/Screens/Inventory/components/product_detail_screen.dart';
import 'package:project/Screens/Inventory/components/products.dart';
import 'package:project/Screens/Welcome/welcome_screen.dart';
import 'package:project/Screens/Inventory/components/orders_screen.dart';
import 'package:project/constants.dart';
import 'package:provider/provider.dart';
import 'Screens/Login/login_screen.dart';
import 'package:project/Screens/Inventory/components/orders.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (ctx) => Products(),
      ),
      ChangeNotifierProvider(
        create: (ctx) => Cart(),
      ),
      ChangeNotifierProvider(
          create: (ctx)=> Orders(),
      ),
    ],
      child: MaterialApp(
      title: 'MREL',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreen(),
      routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            OrdersScreen.routeName: (ctx) => OrdersScreen(),
          }
      ),
    );
  }
}
