import 'package:flutter/material.dart';
import 'package:project/Screens/Inventory/components/product_card.dart';
import 'category_card.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ProductCard(
              'CIVIL'
          ),
          ProductCard(
              'Electrical'
          ),
          ProductCard(
              'Sanitary'
          ),
          ProductCard(
              'Matal '
          ),
          ProductCard(
              'Wood'
          ),
          ProductCard(
              'Paint'
          ),
          ProductCard(
              'Tiles'
          ),
          ProductCard(
              'Thai '
          ),
          ProductCard(
              'E.M.S'
          ),
          ProductCard(
              'Garden'
          ),
          ProductCard(
              'Brand '
          ),
        ],
      ),
    );
  }
}