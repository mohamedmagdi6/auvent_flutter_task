import 'package:auvent_flutter_task/core/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserCredential>> signIn(String email, String password);
  Future<Either<Failure, UserCredential>> signUp(String email, String password);
}
