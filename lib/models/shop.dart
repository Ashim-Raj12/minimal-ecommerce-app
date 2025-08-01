import 'package:ecommerce/models/product.dart';
import 'package:flutter/cupertino.dart';

class Shop extends ChangeNotifier {
  // Products
  final List<Product> _shop = [
    Product(
      name: 'Smartwatch X9',
      price: 1999.99,
      description: 'Advanced fitness tracker with AMOLED display',
      imagePath: 'lib/assets/smartwatch.jpg',
    ),
    Product(
      name: 'EchoBuds Pro',
      price: 1299.50,
      description: 'Noise-cancelling wireless earbuds with long battery life',
      imagePath: 'lib/assets/ear-buds.jpg',
    ),
    Product(
      name: 'Genuine Leather Wallet',
      price: 499.99,
      description: 'Slim, handcrafted wallet with RFID protection',
      imagePath: 'lib/assets/wallet.jpg',
    ),
    Product(
      name: 'Nike Air Zoom',
      price: 14999.95,
      description: 'Lightweight sneakers built for speed and comfort',
      imagePath: 'lib/assets/nike.jpg',
    ),
  ];
  //Cart
  final List<Product> _cart = [];

  //Getters
  List<Product> get shop => _shop;
  List<Product> get cart => _cart;

  //Add to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //Remove from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
