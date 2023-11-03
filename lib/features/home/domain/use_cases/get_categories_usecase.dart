import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_friday/core/errors/failures.dart';
import 'package:e_commerce_c9_friday/features/home/domain/entities/CategoryAndBrandEntity.dart';
import 'package:e_commerce_c9_friday/features/home/domain/repositories/home_repo.dart';

class GetCategoriesUseCase {
  HomeRepo repo;

  GetCategoriesUseCase(this.repo);

  Future<Either<Failures, CategoryAndBrandEntity>> call() =>
      repo.getCategories();
}
