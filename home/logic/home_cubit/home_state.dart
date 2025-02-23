part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeProductLoading extends HomeState {}
final class HomeProductSucess extends HomeState {}
final class HomeProductError extends HomeState {
  final String error;

  HomeProductError({required this.error});
}
