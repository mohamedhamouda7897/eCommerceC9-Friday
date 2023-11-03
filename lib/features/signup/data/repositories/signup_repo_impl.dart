import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_friday/features/signup/data/data_sources/remote/signup_remote_ds.dart';
import 'package:e_commerce_c9_friday/features/signup/domain/entities/UserEntity.dart';
import 'package:e_commerce_c9_friday/features/signup/domain/repositories/signup_repo.dart';

import '../../../../core/errors/failures.dart';
import '../models/request_paramters.dart';

class SignupRemoImpl implements SignupRepo {
  SignupRemoteDS signupRemoteDS;

  SignupRemoImpl(this.signupRemoteDS);

  @override
  Future<Either<Failures, UserEntity>> signUp(RequestParam requestParam) {
    return signupRemoteDS.signup(requestParam);
  }
}
