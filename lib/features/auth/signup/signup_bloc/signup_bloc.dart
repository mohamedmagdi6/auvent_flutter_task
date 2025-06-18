import 'package:auvent_flutter_task/domain/use_cases/sign_up_use_case.dart';
import 'package:auvent_flutter_task/features/auth/signup/signup_bloc/signup_events.dart';
import 'package:auvent_flutter_task/features/auth/signup/signup_bloc/signup_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase signUpUseCase;

  SignUpBloc({required this.signUpUseCase}) : super(SignUpInitial()) {
    on<SignUpRequested>(_onSignUp);
  }

  Future<void> _onSignUp(
    SignUpRequested event,
    Emitter<SignUpState> emit,
  ) async {
    emit(SignUpLoading());
    final result = await signUpUseCase(event.email, event.password);
    result.fold(
      (failure) => emit(SignUpFailure(failure.message)),
      (user) => emit(SignUpSuccess(user)),
    );
  }
}
