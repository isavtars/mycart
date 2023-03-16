import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:mycart/model/product_item.dart';

class ProductAll extends ChangeNotifier {
  final List<ProductItem> _productsitem = [
    ProductItem(name: "Green", color: const Color.fromARGB(255, 1, 158, 72)),
    ProductItem(name: "orange", color: const Color.fromARGB(255, 247, 181, 2)),
    ProductItem(name: "khalti", color: const Color.fromARGB(255, 191, 4, 248)),
    ProductItem(name: "Yeloow", color: const Color(0xffFED123)),
    ProductItem(name: "Pink", color: const Color.fromARGB(255, 253, 5, 88)),
    ProductItem(name: "purple", color: const Color.fromARGB(255, 202, 5, 176)),
    ProductItem(name: "Green", color: const Color.fromARGB(255, 1, 158, 72)),
    ProductItem(name: "orange", color: const Color.fromARGB(255, 247, 181, 2)),
    ProductItem(name: "khalti", color: const Color.fromARGB(255, 191, 4, 248)),
    ProductItem(name: "Yeloow", color: const Color(0xffFED123)),
    ProductItem(name: "Pink", color: const Color.fromARGB(255, 253, 5, 88)),
    ProductItem(name: "purple", color: const Color.fromARGB(255, 202, 5, 176)),
  ];

  //get products
  UnmodifiableListView<ProductItem> get productItems {
    return UnmodifiableListView(_productsitem);
  }

  //for cart items
  final List<ProductItem> _cartItem = [
    // ProductItem(name: "khalti", color: const Color.fromARGB(255, 191, 4, 248)),
    // ProductItem(name: "Yeloow", color: const Color(0xffFED123)),
  ];

  UnmodifiableListView<ProductItem> get cartItems {
    return UnmodifiableListView(_cartItem);
  }

  //for the cartitem  length
  int cartItemCount() {
    return _cartItem.length;
  }

  //add cartItems
  void addCartItems(ProductItem productitem) {
    final cartItem =
        ProductItem(name: productitem.name, color: productitem.color);
    _cartItem.add(cartItem);
    notifyListeners();
  }

  //get tootal Prices

  int get totalprices => _cartItem.length * 50;

  //delete cartItems
  void deleteCartItem(productAll) {
    _cartItem.remove(productAll);
    notifyListeners();
  }
}
