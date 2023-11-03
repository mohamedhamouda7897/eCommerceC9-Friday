part of 'home_bloc.dart';

enum ScreenStatus {
  init,
  loading,
  brandsSuccess,
  brandsError,
  categoriesSuccess,
  categoriesError,
}

@immutable
class HomeState {
  ScreenStatus? status;
  List<DataEntity>? brands;
  List<DataEntity>? categories;
  Failures? failures;

  HomeState({this.status, this.brands, this.categories, this.failures});

  HomeState copWith(
      {ScreenStatus? status,
      List<DataEntity>? brands,
      List<DataEntity>? categories,
      Failures? failures}) {
    return HomeState(
      failures: failures ?? this.failures,
      status: status ?? this.status,
      brands: brands ?? this.brands,
      categories: categories ?? this.categories,
    );
  }
}

class HomeInitial extends HomeState {
  HomeInitial() : super(status: ScreenStatus.init);
}
