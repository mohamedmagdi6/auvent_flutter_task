import 'package:auvent_flutter_task/domain/use_cases/sign_in_use_case.dart';
import 'package:auvent_flutter_task/features/auth/signin/signin_bloc/signin_events.dart';
import 'package:auvent_flutter_task/features/auth/signin/signin_bloc/signin_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCase signInUseCase;

  SignInBloc({required this.signInUseCase}) : super(SignInInitial()) {
    on<SignInRequested>(_onSignIn);
  }

  Future<void> _onSignIn(
    SignInRequested event,
    Emitter<SignInState> emit,
  ) async {
    emit(SignInLoading());
    final result = await signInUseCase(event.email, event.password);
    result.fold(
      (failure) => emit(SignInFailure(failure.message)),
      (user) => emit(SignInSuccess(user)),
    );
  }
}
