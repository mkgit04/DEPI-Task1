import '../models/product_model.dart' show ProductModel;

class ProductsListState {}

class ProductsListInitial extends ProductsListState {}

class ProductsListLoading extends ProductsListState {}

class ProductsListEmpty extends ProductsListState {}

class ProductsListLoaded extends ProductsListState {
  List<ProductModel> products;

  ProductsListLoaded({required this.products});
}

class ProductsListError extends ProductsListState {
  String message;
  ProductsListError({this.message = "An error occurred"});
}
