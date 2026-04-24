import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart' show TextEditingController;
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

import 'auth_state.dart'
    show AuthState, AuthInitial, LoginLoading, LoginSuccess, LoginFailure;

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future<void> login() async {
    emit(LoginLoading());
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      log(userCredential.user?.email ?? 'No email', name: 'AuthCubit');
      log(userCredential.user?.uid ?? 'No UID', name: 'AuthCubit');
      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      emit(LoginFailure(e.message ?? 'An error occurred'));
      if (e.code == 'user-not-found') {
        log('No user found for that email.', name: 'AuthCubit');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.', name: 'AuthCubit');
      }
    } catch (e) {
      log(e.toString(), name: 'AuthCubit');
      emit(LoginFailure(e.toString()));
    }
  }
}
