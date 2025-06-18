import 'package:auvent_flutter_task/core/failures/failures.dart';
import 'package:auvent_flutter_task/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInUseCase {
  final AuthRepository repository;

  SignInUseCase(this.repository);

  Future<Either<Failure, UserCredential>> call(String email, String password) {
    return repository.signIn(email, password);
  }
}
