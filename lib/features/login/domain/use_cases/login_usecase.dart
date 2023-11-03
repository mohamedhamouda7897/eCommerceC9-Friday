import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_friday/core/errors/failures.dart';
import 'package:e_commerce_c9_friday/features/login/domain/repositories/login_repo.dart';
import 'package:e_commerce_c9_friday/features/signup/domain/entities/UserEntity.dart';

class LoginUseCase {
  LoginRepo loginRepo;

  LoginUseCase(this.loginRepo);

  Future<Either<Failures, UserEntity>> call(String email, String password) =>
      loginRepo.login(email, password);
}
