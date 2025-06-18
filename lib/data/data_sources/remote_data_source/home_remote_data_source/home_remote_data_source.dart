import 'package:auvent_flutter_task/core/failures/failures.dart';
import 'package:auvent_flutter_task/data/model_dto/home_data_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRemoteDataSource {
  Future<Either<Failure, HomeDataModel>> fetchHomeData();
}
