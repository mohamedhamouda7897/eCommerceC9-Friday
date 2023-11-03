import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_friday/core/errors/failures.dart';
import 'package:e_commerce_c9_friday/features/home/domain/entities/CategoryAndBrandEntity.dart';
import 'package:e_commerce_c9_friday/features/home/domain/repositories/home_repo.dart';

import '../data_sources/remote/home_remote_ds_impl.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRemoteDSImpl homeRemoteDSImpl;

  HomeRepoImpl(this.homeRemoteDSImpl);

  @override
  Future<Either<Failures, CategoryAndBrandEntity>> getBrands() {
    return homeRemoteDSImpl.getBrands();
  }

  @override
  Future<Either<Failures, CategoryAndBrandEntity>> getCategories() {
    return homeRemoteDSImpl.getCategories();
  }
}
