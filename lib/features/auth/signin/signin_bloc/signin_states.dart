import 'package:firebase_auth/firebase_auth.dart';

abstract class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {
  final UserCredential user;
  SignInSuccess(this.user);
}

class SignInFailure extends SignInState {
  final String message;
  SignInFailure(this.message);
}
