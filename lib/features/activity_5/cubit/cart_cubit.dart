import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1_flutter/features/activity_5/cubit/cart_state.dart'
    show CartState, CartInitial, ItemAdded, ItemRemoved;

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  int itemCounter = 0;
  double price = 2.20;

  void addItem() {
    itemCounter++;
    emit(ItemAdded());
  }

  void removeItem() {
    if (itemCounter == 0) return;
    itemCounter--;
    emit(ItemRemoved());
  }
}
