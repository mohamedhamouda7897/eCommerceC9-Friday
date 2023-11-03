import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_friday/core/errors/failures.dart';
import 'package:e_commerce_c9_friday/features/signup/domain/entities/UserEntity.dart';
import 'package:e_commerce_c9_friday/features/signup/domain/repositories/signup_repo.dart';

import '../../data/models/request_paramters.dart';

class SignupUseCase {
  SignupRepo signupRepo;

  SignupUseCase(this.signupRepo);

  Future<Either<Failures, UserEntity>> call(RequestParam requestParam) =>
      signupRepo.signUp(requestParam);
}
