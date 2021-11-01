import 'package:flutter/material.dart';
import 'package:project/Screens/Inventory/components/cart.dart';
import 'package:project/Screens/Inventory/components/product_detail_screen.dart';
import 'package:project/Screens/Inventory/components/product.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {

  // final String id;
  // final String title;
  // final String imageUrl;
  //
  // ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: product.id,
            );
          },
          child: Image.asset(
            product.imageUrl,
            fit: BoxFit.fitHeight,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Product>(
            builder: (ctx, product, _) => IconButton(
              icon: Icon(
                product.isFavorite? Icons.favorite : Icons.favorite_border,
              ),
              color: Theme.of(context).accentColor,
              onPressed: (){
                product.toggleFavoriteStatus();
              },
            ),
          ),
          // Product Title
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          //Product Shopping Card
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
    cart.addItem(product.id, product.title, product.price);
    Scaffold.of(context).hideCurrentSnackBar();
    Scaffold.of(context).showSnackBar(
    SnackBar(
    content: Text('Added item to cart!'),
    duration: Duration(seconds: 2),
    action: SnackBarAction(
    label: 'UNDO',
    onPressed: () {
    cart.removeSingleItem(product.id);
    // cart.addItem(
    //     product.productId,
    //     product.price,
    //     product.title,
    // );
    },
    ),
    ),
    );
    }
    )
    ),)
    );
  }
}
