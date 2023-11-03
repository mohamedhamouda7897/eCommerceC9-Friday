import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_friday/features/signup/data/models/UserModel.dart';

import '../../../../../core/errors/failures.dart';
import '../../models/request_paramters.dart';

abstract class SignupRemoteDS {
  Future<Either<Failures, UserModel>> signup(RequestParam requestParam);
}
