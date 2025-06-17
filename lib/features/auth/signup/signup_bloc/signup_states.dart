import 'package:firebase_auth/firebase_auth.dart';

abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {
  final UserCredential user;
  SignUpSuccess(this.user);
}

class SignUpFailure extends SignUpState {
  final String message;
  SignUpFailure(this.message);
}
