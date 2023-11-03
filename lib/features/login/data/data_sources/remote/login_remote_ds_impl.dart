import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_c9_friday/core/api/api_manager.dart';
import 'package:e_commerce_c9_friday/core/api/endPoints.dart';
import 'package:e_commerce_c9_friday/features/login/data/data_sources/remote/login_remote_ds.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../signup/data/models/UserModel.dart';

class LoginRemoteDSImpl implements LoginRemoteDS {
  ApiManager apiManager;

  LoginRemoteDSImpl(this.apiManager);

  @override
  Future<Either<Failures, UserModel>> login(
      String email, String password) async {
    try {
      Response response = await apiManager.postData(EndPoints.login,
          body: {"email": email, "password": password});

      UserModel userModel = UserModel.fromJson(response.data);
      return Right(userModel);
    } catch (e) {
      return Left(RemoteFailure(message: e.toString()));
    }
  }
}
