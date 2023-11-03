import 'package:e_commerce_c9_friday/core/api/api_manager.dart';
import 'package:e_commerce_c9_friday/features/login/data/data_sources/remote/login_remote_ds.dart';
import 'package:e_commerce_c9_friday/features/login/data/data_sources/remote/login_remote_ds_impl.dart';
import 'package:e_commerce_c9_friday/features/login/data/repositories/login_repo_impl.dart';
import 'package:e_commerce_c9_friday/features/login/domain/repositories/login_repo.dart';
import 'package:e_commerce_c9_friday/features/login/domain/use_cases/login_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../signup/domain/entities/UserEntity.dart';
import '../../../signup/presentation/bloc/signup_bloc.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  static LoginBloc get(context) => BlocProvider.of(context);

  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      if (event is LoginButtonEvent) {
        emit(state.copyWith(status: ScreenStatus.loading));

        ApiManager apiManager = ApiManager();
        LoginRemoteDS loginRemoteDS = LoginRemoteDSImpl(apiManager);

        LoginRepo loginRepo = LoginRepoImpl(loginRemoteDS);
        var result = await LoginUseCase(loginRepo)("sra@gmail.com", "sama@123");

        result.fold((l) {
          emit(state.copyWith(status: ScreenStatus.failure, failures: l));
        }, (r) {
          emit(state.copyWith(status: ScreenStatus.success, entity: r));
        });
      }
    });
  }
}
