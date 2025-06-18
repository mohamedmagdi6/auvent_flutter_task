import 'package:auvent_flutter_task/core/failures/failures.dart';
import 'package:auvent_flutter_task/data/data_sources/local_data_source/hive_service.dart';
import 'package:auvent_flutter_task/data/data_sources/remote_data_source/home_remote_data_source/home_remote_data_source.dart';
import 'package:auvent_flutter_task/data/model_dto/home_data_model.dart';
import 'package:auvent_flutter_task/domain/repository/home_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;
  final HiveService hiveService;

  HomeRepositoryImpl({
    required this.remoteDataSource,
    required this.hiveService,
  });

  @override
  Future<Either<Failure, HomeDataModel>> fetchHomeData() async {
    // If it not have internet access, return cached data
    if (!(await InternetConnection().hasInternetAccess)) {
      var cachedData = hiveService.getCachedUser(HiveService.userBoxKey);
      if (cachedData != null) {
        return Right(cachedData);
      }
      return Left(
        ServerFailure(
          message: 'No internet connection and no cached data available.',
          code: 'NO_INTERNET',
        ),
      );
    }
    var fetchHomeData = await remoteDataSource.fetchHomeData();
    if (fetchHomeData.isRight()) {
      hiveService.cacheHomeData(fetchHomeData.toNullable()!);
    }

    return fetchHomeData;
  }
}
