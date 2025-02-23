part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

final class HomeInitial extends HomeState {}
final class HomeChangeBottomNavBar extends HomeState {}
final class BrowseSearch extends HomeState {}
final class HomeUserDataLoading extends HomeState {}
final class HomeUserDataSucess extends HomeState {}
final class HomeUserDataFailure extends HomeState {
  final String error;

  HomeUserDataFailure({required this.error});
}

final class HomeProductLoading extends HomeState {}
final class HomeProductSucess extends HomeState {}
final class HomeProductError extends HomeState {
  final String error;

  HomeProductError({required this.error});
}
