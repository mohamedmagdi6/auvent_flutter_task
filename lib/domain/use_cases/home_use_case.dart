import 'package:auvent_flutter_task/core/failures/failures.dart';
import 'package:auvent_flutter_task/data/model_dto/home_data_model.dart';
import 'package:auvent_flutter_task/domain/repository/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeUseCase {
  final HomeRepository repository;

  HomeUseCase(this.repository);

  Future<Either<Failure, HomeDataModel>> call() {
    return repository.fetchHomeData();
  }
}
