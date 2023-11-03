import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_c9_friday/core/api/api_manager.dart';
import 'package:e_commerce_c9_friday/core/api/endPoints.dart';
import 'package:e_commerce_c9_friday/core/errors/failures.dart';
import 'package:e_commerce_c9_friday/features/home/data/data_sources/remote/home_remote_ds.dart';
import 'package:e_commerce_c9_friday/features/home/data/models/CategoryAndBrandModel.dart';

class HomeRemoteDSImpl implements HomeRemoteDS {
  ApiManager apiManager;

  HomeRemoteDSImpl(this.apiManager);

  @override
  Future<Either<Failures, CategoryAndBrandModel>> getBrands() async {
    try {
      Response response = await apiManager.getData(EndPoints.brands);
      CategoryAndBrandModel model =
          CategoryAndBrandModel.fromJson(response.data);
      return Right(model);
    } catch (e) {
      return Left(RemoteFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failures, CategoryAndBrandModel>> getCategories() async {
    try {
      Response response = await apiManager.getData(EndPoints.categories);
      CategoryAndBrandModel model =
          CategoryAndBrandModel.fromJson(response.data);
      return Right(model);
    } catch (e) {
      return Left(RemoteFailure(message: e.toString()));
    }
  }
}
