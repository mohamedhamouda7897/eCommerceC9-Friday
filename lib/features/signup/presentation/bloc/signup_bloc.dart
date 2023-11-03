import 'package:e_commerce_c9_friday/core/api/api_manager.dart';
import 'package:e_commerce_c9_friday/core/errors/failures.dart';
import 'package:e_commerce_c9_friday/features/signup/data/data_sources/remote/signup_remote_ds.dart';
import 'package:e_commerce_c9_friday/features/signup/data/data_sources/remote/signup_remote_ds_impl.dart';
import 'package:e_commerce_c9_friday/features/signup/data/models/request_paramters.dart';
import 'package:e_commerce_c9_friday/features/signup/data/repositories/signup_repo_impl.dart';
import 'package:e_commerce_c9_friday/features/signup/domain/entities/UserEntity.dart';
import 'package:e_commerce_c9_friday/features/signup/domain/repositories/signup_repo.dart';
import 'package:e_commerce_c9_friday/features/signup/domain/use_cases/signup_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  static SignupBloc get(context) => BlocProvider.of(context);

  SignupBloc() : super(SignupInitial()) {
    on<SignupEvent>((event, emit) async {
      if (event is SignupButtonEvent) {
        emit(state.copyWith(status: ScreenStatus.loading));

        ApiManager apiManager = ApiManager();
        SignupRemoteDS signupRemoteDS = SignupRemoteDSImpl(apiManager);
        SignupRepo signupRepo = SignupRemoImpl(
          signupRemoteDS,
        );
        RequestParam requestParam = RequestParam(
            name: "mohamed",
            email: "mohamedhm456@gmail.com",
            password: "123@Mohamed",
            phone: "011111111");
        var useCase = await SignupUseCase(signupRepo)(requestParam);

        useCase.fold((l) {
          emit(state.copyWith(status: ScreenStatus.failure, failures: l));
        }, (r) {
          emit(state.copyWith(status: ScreenStatus.success, entity: r));
        });
      }
    });
  }
}
