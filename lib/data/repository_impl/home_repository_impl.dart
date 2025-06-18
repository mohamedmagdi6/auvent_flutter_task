import 'package:auvent_flutter_task/core/failures/failures.dart';
import 'package:auvent_flutter_task/data/data_sources/remote_data_source/home_remote_data_source/home_remote_data_source.dart';
import 'package:auvent_flutter_task/data/model_dto/home_data_model.dart';
import 'package:auvent_flutter_task/domain/repository/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, HomeDataModel>> fetchHomeData() {
    return remoteDataSource.fetchHomeData();
  }
}
