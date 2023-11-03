import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_c9_friday/core/api/api_manager.dart';
import 'package:e_commerce_c9_friday/core/api/endPoints.dart';
import 'package:e_commerce_c9_friday/features/signup/data/data_sources/remote/signup_remote_ds.dart';
import 'package:e_commerce_c9_friday/features/signup/data/models/UserModel.dart';

import '../../../../../core/errors/failures.dart';
import '../../models/request_paramters.dart';

class SignupRemoteDSImpl implements SignupRemoteDS {
  ApiManager apiManager;

  SignupRemoteDSImpl(this.apiManager);

  @override
  Future<Either<Failures, UserModel>> signup(RequestParam requestParam) async {
    try {
      Response response = await apiManager.postData(EndPoints.signup,
          body: requestParam.toJson());

      UserModel userModel = UserModel.fromJson(response.data);
      return Right(userModel);
    } catch (e) {
      return Left(RemoteFailure(message: e.toString()));
    }
  }
}
