import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
import 'package:task1_flutter/core/data/grid_items.dart';
import 'package:task1_flutter/features/favourites/cubit/favourites_state.dart'
    show
        FavouriteAdded,
        FavouriteRemoved,
        FavouritesEmpty,
        FavouritesError,
        FavouritesInitial,
        FavouritesLoaded,
        FavouritesLoading,
        FavouritesState;

import '../../../core/db/sqldb.dart' show Sqldb;

class FavouritesCubit extends Cubit<FavouritesState> {
  FavouritesCubit() : super(FavouritesInitial());
  final _sqldb = Sqldb();
  List<Map<dynamic, dynamic>> favourites = [];

  Future<void> getFavourites() async {
    emit(FavouritesLoading());
    try {
      favourites = await _sqldb.readData("SELECT * FROM favourites", []);
      if (favourites.isEmpty) {
        emit(FavouritesEmpty());
        return;
      }
      // log(favourites[0].toString());
      emit(FavouritesLoaded(favourites));
    } catch (e) {
      emit(FavouritesError(e.toString()));
    }
  }

  Future<void> addToFavourite(int index) async {
    await _sqldb.insertData(
      "INSERT INTO favourites (id, name, price, image) VALUES (?,?,?,?)",
      [
        index,
        gridItems[index]["title"],
        gridItems[index]["price"],
        gridItems[index]["image"],
      ],
    );
    emit(FavouriteAdded(gridItems[index]));
    getFavourites();
  }

  Future<void> removeFromFavourite(int index) async {
    await _sqldb.deleteData("DELETE FROM favourites WHERE id = ?", [index]);

    emit(FavouriteRemoved());
    getFavourites();
  }

  Future<bool> isFavourite(int index) async {
    final favourite = await _sqldb.readData(
      "SELECT * FROM favourites WHERE id = ?",
      [index],
    );

    if (favourite.isNotEmpty) {
      return true;
    } else {
      return false;
    }

    // emit(FavouriteRemoved());
  }
}
