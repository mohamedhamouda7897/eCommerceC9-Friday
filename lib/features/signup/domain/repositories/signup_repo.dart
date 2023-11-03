import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_friday/features/signup/domain/entities/UserEntity.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/request_paramters.dart';

abstract class SignupRepo {
  Future<Either<Failures, UserEntity>> signUp(RequestParam requestParam);
}
