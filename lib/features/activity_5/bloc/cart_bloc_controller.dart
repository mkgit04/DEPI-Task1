import 'cart_bloc_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBlocController extends Bloc<CartBlocEvent, int> {
  CartBlocController() : super(0) {
    on<CounterIncrement>((event, emit) {
      itemCounter++;
      totalPrice = itemCounter * 2.20;
      emit(state + 1);
    });

    on<CounterDecrement>((event, emit) {
      if (itemCounter == 0) return;
      itemCounter--;
      totalPrice = itemCounter * 2.20;
      emit(state - 1);
    });
    on<CounterReset>((event, emit) => emit(0));
  }
  int itemCounter = 0;
  double totalPrice = 0.0;
}
