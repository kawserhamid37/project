import 'package:flutter/material.dart';
import 'package:project/Screens/Inventory/components/product.dart';
class Products extends ChangeNotifier{

  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Burger',
      description: 'A Burger - A nice food!',
      price: 29.99,
      imageUrl:'assets/images/burger.jpg',
    ),
    Product(
      id: 'p2',
      title: 'KFC',
      description: 'A nice pair of Food.',
      price: 59.99,
      imageUrl:'assets/images/kfc.webp',
    ),
    Product(
      id: 'p3',
      title: 'Chicken Fry',
      description: 'A Chicken - A nice food!',
      price: 19.99,
      imageUrl:'assets/images/chicken.webp',
    ),
    Product(
      id: 'p4',
      title: 'Pizza',
      description: 'A Pizza - A nice food!',
      price: 49.99,
      imageUrl:'assets/images/pizza.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Sandwich',
      description: 'A Sandwich - A good food.',
      price: 49.99,
      imageUrl:'assets/images/sandwich.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addFood(Product value) {
    _items.add(value);
    //notifyListeners();
  }
}
