import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
import 'package:task1_flutter/core/api/api_consumer.dart';

import '../../../core/api/end_points.dart' show EndPoints;
import '../../../core/error/app_exceptions.dart' show ServerException;
import '../models/product_model.dart' show ProductModel;
import 'products_list_state.dart'
    show
        ProductsListState,
        ProductsListInitial,
        ProductsListLoading,
        ProductsListError,
        ProductsListLoaded,
        ProductsListEmpty;

class ProductsListCubit extends Cubit<ProductsListState> {
  ProductsListCubit({required this.api}) : super(ProductsListInitial());
  ApiConsumer api;
  Future<void> getProducts() async {
    emit(ProductsListLoading());

    try {
      final response = await api.get(path: EndPoints.products);
      List products = response["products"];
      log(products.toString());
      if (products.isEmpty) {
        emit(ProductsListEmpty());
        return;
      }

      emit(
        ProductsListLoaded(
          products: products.map((e) => ProductModel.fromJson(e)).toList(),
        ),
      );
    } on ServerException catch (e) {
      if (isClosed) return;
      emit(ProductsListError(message: e.errModel.message));
    }
  }
}
