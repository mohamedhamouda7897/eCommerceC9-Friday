import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_friday/core/errors/failures.dart';
import 'package:e_commerce_c9_friday/features/signup/data/models/UserModel.dart';

abstract class LoginRemoteDS {
  Future<Either<Failures, UserModel>> login(String email, String password);
}
