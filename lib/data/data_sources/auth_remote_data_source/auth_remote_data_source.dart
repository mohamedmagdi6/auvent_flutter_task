import 'package:auvent_flutter_task/core/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, UserCredential>> signInWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPassword(
    String email,
    String password,
  );
  Future<void> signOut();
}
