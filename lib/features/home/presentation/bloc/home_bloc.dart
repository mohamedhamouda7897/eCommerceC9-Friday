import 'package:bloc/bloc.dart';
import 'package:e_commerce_c9_friday/core/errors/failures.dart';
import 'package:e_commerce_c9_friday/features/home/domain/entities/CategoryAndBrandEntity.dart';
import 'package:meta/meta.dart';

import '../../domain/use_cases/get_brands_usecase.dart';
import '../../domain/use_cases/get_categories_usecase.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetBrandsUseCase getBrandsUseCase;
  GetCategoriesUseCase getCategoriesUseCase;

  HomeBloc(this.getBrandsUseCase, this.getCategoriesUseCase)
      : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      if (event is GetBrandsEvent) {
        emit(state.copWith(status: ScreenStatus.loading));

        var result = await getBrandsUseCase();
        result.fold((l) {
          emit(state.copWith(status: ScreenStatus.brandsError, failures: l));
        }, (r) {
          emit(state.copWith(
              status: ScreenStatus.brandsSuccess, brands: r.data));
        });
      } else if (event is GetCategoriesEvent) {
        emit(state.copWith(status: ScreenStatus.loading));

        var result = await getCategoriesUseCase();
        result.fold((l) {
          emit(
              state.copWith(status: ScreenStatus.categoriesError, failures: l));
        }, (r) {
          emit(state.copWith(
              status: ScreenStatus.categoriesSuccess, categories: r.data));
        });
      }
    });
  }
}
