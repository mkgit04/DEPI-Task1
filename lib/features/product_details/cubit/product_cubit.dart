import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

import 'product_state.dart'
    show
        ProductInitial,
        ProductState,
        QuantityChanged,
        TotalChanged,
        SizeChanged,
        AdditionChanged;

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());
  List<Map<String, dynamic>> sizes = [
    {"title": "سنجل", "price": 0.0},
    {"title": "دبل", "price": 10.0},
  ];

  List<Map<String, dynamic>> additions = [
    {"title": "سلطة", "price": 5.5, "isChecked": false},
    {"title": "كاتشب", "price": 3.2, "isChecked": false},
    {"title": "بيبسي", "price": 7.8, "isChecked": false},
  ];

  int quantity = 1;
  int selectedSizeIndex = 0;
  double price = 12.0;
  double total = 12.0;

  void calculateTotal() {
    double additionsTotal = 0.0;
    for (var addition in additions) {
      if (addition["isChecked"]) {
        additionsTotal += addition["price"];
      }
    }
    total =
        quantity * (price + sizes[selectedSizeIndex]["price"] + additionsTotal);
    emit(TotalChanged(total));
  }

  void changeSize(int index) {
    selectedSizeIndex = index;
    emit(SizeChanged(selectedSizeIndex));
    calculateTotal();
  }

  void changeAddition(int index, bool value) {
    additions[index]["isChecked"] = value;
    emit(AdditionChanged(additions[index]));
    calculateTotal();
  }

  void addItem() {
    quantity++;
    emit(QuantityChanged(quantity));
    calculateTotal();
  }

  void removeItem() {
    if (quantity == 1) return;
    quantity--;
    emit(QuantityChanged(quantity));
    calculateTotal();
  }

  void reset() {
    quantity = 1;
    selectedSizeIndex = 0;
    price = 12.0;
    total = 12.0;
    additions = [
      {"title": "سلطة", "price": 5.5, "isChecked": false},
      {"title": "كاتشب", "price": 3.2, "isChecked": false},
      {"title": "بيبسي", "price": 7.8, "isChecked": false},
    ];
    emit(ProductInitial());
  }
}
