import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_friday/core/errors/failures.dart';
import 'package:e_commerce_c9_friday/features/home/data/models/CategoryAndBrandModel.dart';

abstract class HomeRemoteDS {
  Future<Either<Failures, CategoryAndBrandModel>> getBrands();

  Future<Either<Failures, CategoryAndBrandModel>> getCategories();
}
