import 'package:flutter/material.dart';

class ItemsModel extends ChangeNotifier{
  final String name;
  final String image;
  final String price;
  final String description;

  ItemsModel(
      {required this.name, required this.image, required this.price, required this.description});


  List<ItemsModel> items = [
    ItemsModel(name: "Airpods Max",
        image: "assets/images/headphone.png",
        price: "\$299.99",
        description: "Winning Beat sound"),
    ItemsModel(name: "HP ProBook 4544",
        image: "assets/images/laptop.png",
        price: "\$599.99",
        description: "Core i7 - 64GB RAM"),
    ItemsModel(name: "MacBook Pro 14",
        image: "assets/images/macbook.png",
        price: "\$9,999.99",
        description: "12th Gen - 1TB RAM"),
    ItemsModel(name: "Apple iPad Pro",
        image: "assets/images/ipad.png",
        price: "\$1,599.99",
        description: "Space Gray - 8th Gen"),
    ItemsModel(name: "iPhone 16 Pro Max",
        image: "assets/images/iphone.png",
        price: "\$2,299.99",
        description: "1TB Unlocked"),
    ItemsModel(name: "Sunrise Watch",
        image: "assets/images/watch.png",
        price: "\$599.99",
        description: "7G Network Activated"),
  ];

  List<ItemsModel> _cart = [];

  List<ItemsModel> get cart => _cart;

  void addToCart(ItemsModel cartItem) {
    //for (int i = 0; i < quantity; i++) {
      _cart.add(cartItem);
      notifyListeners();
   // }
  }

    void removeFromCart(ItemsModel cartItem){
        _cart.remove(cartItem);
        notifyListeners();
  }

}