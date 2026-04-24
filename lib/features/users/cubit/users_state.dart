class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  List<dynamic> users;
  UserLoaded({this.users = const []});
}

class UserError extends UserState {
  final String errorMessage;

  UserError(this.errorMessage);
}
