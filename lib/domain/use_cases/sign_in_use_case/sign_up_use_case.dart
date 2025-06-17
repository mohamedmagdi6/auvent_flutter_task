import 'package:auvent_flutter_task/core/failures/failures.dart';
import 'package:auvent_flutter_task/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpUseCase {
  final AuthRepository repository;
  SignUpUseCase(this.repository);

  Future<Either<Failure, UserCredential>> call(String email, String password) {
    return repository.signUp(email, password);
  }
}
