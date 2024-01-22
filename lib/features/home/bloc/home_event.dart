part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomePageWhishListButtonClicked extends HomeEvent {
  final ProductDataModel clickedProduct;

  HomePageWhishListButtonClicked({required this.clickedProduct});
}

class HomePageCartButtonClicked extends HomeEvent {
  final ProductDataModel clickedProduct;

  HomePageCartButtonClicked({required this.clickedProduct});
}

class HomePageWhishListPageRoute extends HomeEvent {}

class HomePageCartPageRoute extends HomeEvent {}
