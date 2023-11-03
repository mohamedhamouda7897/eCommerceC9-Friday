import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_friday/features/login/data/data_sources/remote/login_remote_ds.dart';
import 'package:e_commerce_c9_friday/features/login/domain/repositories/login_repo.dart';

import '../../../../core/errors/failures.dart';
import '../../../signup/domain/entities/UserEntity.dart';

class LoginRepoImpl implements LoginRepo {
  LoginRemoteDS loginRemoteDS;

  LoginRepoImpl(this.loginRemoteDS);

  @override
  Future<Either<Failures, UserEntity>> login(String email, password) {
    return loginRemoteDS.login(email, password);
  }
}
