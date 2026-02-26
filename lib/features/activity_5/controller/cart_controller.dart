import 'package:flutter/material.dart';

class CartController extends ChangeNotifier {
  int itemCounter = 0;
  double price = 2.20;
  double totalPrice = 0.0;

  void calculatePrice() {
    totalPrice = itemCounter * 2.20;

    notifyListeners();
  }

  void addItem() {
    itemCounter++;
    calculatePrice();
    notifyListeners();
  }

  void removeItem() {
    if (itemCounter == 0) return;
    itemCounter--;
    calculatePrice();
    notifyListeners();
  }
}
