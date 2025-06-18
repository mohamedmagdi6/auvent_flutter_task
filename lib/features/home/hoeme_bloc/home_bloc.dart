import 'package:auvent_flutter_task/domain/use_cases/home_use_case.dart';
import 'package:auvent_flutter_task/features/home/hoeme_bloc/home_events.dart';
import 'package:auvent_flutter_task/features/home/hoeme_bloc/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase homeUseCase;

  HomeBloc({required this.homeUseCase}) : super(HomeInitial()) {
    on<LoadHomeData>((event, emit) async {
      emit(HomeLoading());
      final result = await homeUseCase();
      result.fold(
        (failure) => emit(HomeError(failure.message)),
        (data) => emit(HomeLoaded(data)),
      );
    });
  }
}
