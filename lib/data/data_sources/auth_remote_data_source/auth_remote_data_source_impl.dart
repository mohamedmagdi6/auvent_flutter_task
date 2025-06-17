import 'dart:developer';

import 'package:auvent_flutter_task/core/failures/failures.dart';
import 'package:auvent_flutter_task/core/failures/firebase_error_mapper.dart';
import 'package:auvent_flutter_task/data/data_sources/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  AuthRemoteDataSourceImpl({required this.firebaseAuth});
  @override
  Future<Either<Failure, UserCredential>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(userCredential);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseErrorMapper.mapFirebaseAuthException(e));
    }
  }

  @override
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      log('User signed up: ${userCredential.user?.email}');
      return Right(userCredential);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseErrorMapper.mapFirebaseAuthException(e));
    }
  }
}
