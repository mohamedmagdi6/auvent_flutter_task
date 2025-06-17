import 'package:auvent_flutter_task/core/failures/failures.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseErrorMapper {
  static Failure mapFirebaseAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return FirebaseAuthFailure(
          message: 'No user found with this email',
          code: e.code,
        );
      case 'wrong-password':
        return FirebaseAuthFailure(message: 'Incorrect password', code: e.code);
      case 'email-already-in-use':
        return FirebaseAuthFailure(
          message: 'Email already in use',
          code: e.code,
        );
      default:
        return FirebaseAuthFailure(
          message: e.message ?? 'Authentication failed',
          code: e.code,
        );
    }
  }

  static Failure mapFirebaseException(FirebaseException e) {
    return ServerFailure(
      message: e.message ?? 'Firebase operation failed',
      code: e.code,
    );
  }
}
