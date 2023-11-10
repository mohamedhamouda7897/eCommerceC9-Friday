import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_friday/core/errors/failures.dart';
import 'package:e_commerce_c9_friday/features/home/domain/entities/CategoryAndBrandEntity.dart';

abstract class HomeRepo {
  Future<Either<Failures, CategoryAndBrandEntity>> getCategories();

  Future<Either<Failures, CategoryAndBrandEntity>> getBrands();
  Future<Either<Failures, CategoryAndBrandEntity>> getOffers();
}
