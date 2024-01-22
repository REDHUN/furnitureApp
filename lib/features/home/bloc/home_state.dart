part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

sealed class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoadingState extends HomeState {}

final class HomeLoadingSuccessState extends HomeState {
  final List<ProductDataModel> product;

  HomeLoadingSuccessState({required this.product});
}

final class HomeErrorState extends HomeState {}

final class HomeNavigateToWishListPageActionState extends HomeActionState {}

final class HomeNavigateToCartPageActionState extends HomeActionState {}

class HomeProductItemWishlistedActionState extends HomeActionState {}

class CartProductAddedActionState extends HomeActionState {}
