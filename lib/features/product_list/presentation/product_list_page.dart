import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1_flutter/features/product_list/cubit/products_list_state.dart';
import 'package:task1_flutter/widgets/animated_counter.dart';
import 'package:task1_flutter/widgets/my_location_card.dart';

import '../cubit/products_list_cubit.dart' show ProductsListCubit;
import 'widgets/horizontal_product_tile.dart' show HorizontalProductTile;

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  void initState() {
    context.read<ProductsListCubit>().getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Center(
            child: BlocBuilder<ProductsListCubit, ProductsListState>(
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyLocationWiget(),
                    if (state is ProductsListLoading)
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Color(0xffE94560),
                          ),
                        ),
                      ),
                    if (state is ProductsListError) Text(state.message),
                    if (state is ProductsListEmpty) Text("No products found"),
                    if (state is ProductsListLoaded)
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Num Of Products: ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              AnimatedCounter(
                                value: state.products.length,
                                duration: Duration(seconds: 10),

                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: state.products.length,
                            separatorBuilder: (context, index) => Divider(
                              color: Color(0xffE4E4E4),
                              thickness: 1,

                              height: 20,
                            ),
                            itemBuilder: (context, index) =>
                                HorizontalProductTile(
                                  title: state.products[index].title ?? "",
                                  description:
                                      state.products[index].description ?? "",
                                  price:
                                      state.products[index].price?.toString() ??
                                      "0",
                                  image: state.products[index].thumbnail ?? "",
                                ),
                          ),
                        ],
                      ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
