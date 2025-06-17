abstract class Failure {
  final String message;
  final String code;

  Failure({required this.message, required this.code});
}

class FirebaseAuthFailure extends Failure {
  FirebaseAuthFailure({required super.message, required super.code});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message, required super.code});
}
