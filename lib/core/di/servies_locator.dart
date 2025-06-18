import 'package:auvent_flutter_task/data/repository_impl/auth_repo_impl.dart';
import 'package:auvent_flutter_task/domain/repository/auth_repository.dart';
import 'package:auvent_flutter_task/features/auth/signin/signin_bloc/signin_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:auvent_flutter_task/data/data_sources/remote_data_source/auth_remote_data_source/auth_remote_data_source_impl.dart';
import 'package:auvent_flutter_task/domain/use_cases/sign_in_use_case/sign_in_use_case.dart';
import 'package:auvent_flutter_task/domain/use_cases/sign_in_use_case/sign_up_use_case.dart';
import 'package:auvent_flutter_task/features/auth/signup/signup_bloc/signup_bloc.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // Firebase
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  // Data Source
  getIt.registerSingleton<AuthRemoteDataSourceImpl>(
    AuthRemoteDataSourceImpl(firebaseAuth: getIt.get<FirebaseAuth>()),
  );

  // Repository
  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(
      authRemoteDataSource: getIt.get<AuthRemoteDataSourceImpl>(),
    ),
  );

  // UseCases
  getIt.registerSingleton<SignInUseCase>(
    SignInUseCase(getIt.get<AuthRepository>()),
  );

  getIt.registerSingleton<SignUpUseCase>(
    SignUpUseCase(getIt.get<AuthRepository>()),
  );

  // Blocs
  getIt.registerSingleton<SignInBloc>(
    SignInBloc(signInUseCase: getIt.get<SignInUseCase>()),
  );

  getIt.registerSingleton<SignUpBloc>(
    SignUpBloc(signUpUseCase: getIt.get<SignUpUseCase>()),
  );
}
