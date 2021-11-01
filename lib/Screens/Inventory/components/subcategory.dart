import 'package:flutter/material.dart';
import 'package:project/Screens/Inventory/components/products_overview_screen.dart';
import 'package:project/Screens/Inventory/components/subcategory_card.dart';
import 'category_card.dart';

class SubCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("SubCategory"),
        backgroundColor: Color(0xFFD78F21),),
      body: Container(
      height: 600,
      width: 400,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductsOverviewScreen()),
              );
            },
            child: SubCategoryCard(
                Icon(Icons.book, size: 40,),
                'CEMENT'
            ),
          ),
          SubCategoryCard(
              Icon(Icons.computer, size: 40,),
              'MS ROD'
          ),
          SubCategoryCard(
              Icon(Icons.videogame_asset, size: 40,),
              'STONE CLIPS'
          ),
          // SubCategoryCard(
          //     Icon(Icons.videocam, size: 40,),
          //     'Matal '
          // ),
          // SubCategoryCard(
          //     Icon(Icons.watch, size: 40,),
          //     'Wood'
          // ),
          // SubCategoryCard(
          //     Icon(Icons.weekend, size: 40,),
          //     'Paint'
          // ),
          // SubCategoryCard(
          //     Icon(Icons.weekend, size: 40,),
          //     'Tiles'
          // ),
          // SubCategoryCard(
          //     Icon(Icons.weekend, size: 40,),
          //     'Thai '
          // ),
          // SubCategoryCard(
          //     Icon(Icons.weekend, size: 40,),
          //     'E.M.S'
          // ),
          // SubCategoryCard(
          //     Icon(Icons.weekend, size: 40,),
          //     'Garden'
          // ),
          // SubCategoryCard(
          //     Icon(Icons.weekend, size: 40,),
          //     'Brand '
          // ),
        ],
      ),
    )
    );
  }
}