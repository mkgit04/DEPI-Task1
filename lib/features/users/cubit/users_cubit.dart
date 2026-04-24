import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

import 'users_state.dart'
    show UserInitial, UserLoading, UserState, UserLoaded, UserError;

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial()) {
    // getUser();
  }
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<void> getUser() async {
    emit(UserLoading());
    try {
      final QuerySnapshot users = await _firestore.collection('users').get();

      List<dynamic> userList = users.docs.map((doc) => doc.data()).toList();
      emit(UserLoaded(users: userList));
    } catch (e) {
      emit(UserError('Failed to load users'));
    }
  }

  Future<void> addUser() async {
    await _firestore.collection('users').add({
      'name': 'Mohammed Khattab',
      'age': 22,
    });
  }
}
