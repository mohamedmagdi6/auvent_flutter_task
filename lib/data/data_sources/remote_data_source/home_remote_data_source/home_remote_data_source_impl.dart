import 'package:auvent_flutter_task/core/failures/failures.dart';
import 'package:auvent_flutter_task/core/failures/firebase_error_mapper.dart';
import 'package:auvent_flutter_task/data/data_sources/remote_data_source/home_remote_data_source/home_remote_data_source.dart';
import 'package:auvent_flutter_task/data/model_dto/home_data_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final FirebaseFirestore firestore;
  HomeRemoteDataSourceImpl({required this.firestore});
  String userId = FirebaseAuth.instance.currentUser?.uid ?? '';
  @override
  Future<Either<Failure, HomeDataModel>> fetchHomeData() async {
    try {
      final snapshot = await firestore.collection('users').doc(userId).get();

      if (snapshot.exists) {
        final data = snapshot.data();
        final homeData = HomeDataModel.fromJson(data!);
        return Right(homeData);
      } else {
        return Left(
          ServerFailure(message: 'No data found', code: 'No data found'),
        );
      }
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseErrorMapper.mapFirebaseAuthException(e));
    }
  }
}
