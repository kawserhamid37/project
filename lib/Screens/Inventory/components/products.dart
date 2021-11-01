import 'package:flutter/material.dart';
import 'package:project/Screens/Inventory/components/product.dart';
class Products extends ChangeNotifier{
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'OPC Cement',
      description: 'CIVIL!',
      price: 29.99,
      imageUrl:'assets/icons/civil.jpg',
    ),
    Product(
      id: 'p2',
      title: 'PPC Cement',
      description: 'CIVIL',
      price: 59.99,
      imageUrl:'assets/icons/electrical.jpg',
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

  List<Product> get favoriteItems{
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addFood(Product value) {
    //_items.add(value);
    notifyListeners();
  }
}
