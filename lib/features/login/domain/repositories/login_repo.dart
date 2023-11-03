import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_friday/core/errors/failures.dart';
import 'package:e_commerce_c9_friday/features/signup/domain/entities/UserEntity.dart';

abstract class LoginRepo {
  Future<Either<Failures, UserEntity>> login(String email, password);
}
