class ProductState {}

class ProductInitial extends ProductState {}

class QuantityChanged extends ProductState {
  final int quantity;
  QuantityChanged(this.quantity);
}

class TotalChanged extends ProductState {
  final double total;
  TotalChanged(this.total);
}

class SizeChanged extends ProductState {
  final int index;
  SizeChanged(this.index);
}

class AdditionChanged extends ProductState {
  final Map<String, dynamic> addition;
  AdditionChanged(this.addition);
}
