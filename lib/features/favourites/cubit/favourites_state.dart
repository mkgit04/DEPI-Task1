class FavouritesState {}

class FavouritesInitial extends FavouritesState {}

class FavouritesLoading extends FavouritesState {}

class FavouritesLoaded extends FavouritesState {
  final List<Map<dynamic, dynamic>> favourites;
  FavouritesLoaded(this.favourites);
}

class FavouritesError extends FavouritesState {
  final String error;
  FavouritesError(this.error);
}

class FavouritesEmpty extends FavouritesState {}

class FavouriteAdded extends FavouritesState {
  Map<String, dynamic> favourite;
  FavouriteAdded(this.favourite);
}

class FavouriteRemoved extends FavouritesState {}
