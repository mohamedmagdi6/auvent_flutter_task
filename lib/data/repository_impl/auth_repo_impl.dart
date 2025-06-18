import 'package:auvent_flutter_task/core/failures/failures.dart';
import 'package:auvent_flutter_task/data/data_sources/remote_data_source/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:auvent_flutter_task/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  Future<Either<Failure, UserCredential>> signIn(
    String email,
    String password,
  ) {
    return authRemoteDataSource.signInWithEmailAndPassword(email, password);
  }

  @override
  Future<Either<Failure, UserCredential>> signUp(
    String email,
    String password,
  ) {
    return authRemoteDataSource.signUpWithEmailAndPassword(email, password);
  }
}
