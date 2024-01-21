part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomePageWhishListButtonClicked extends HomeEvent {}

class HomePageCartButtonClicked extends HomeEvent {}

class HomePageWhishListPageRoute extends HomeEvent {}

class HomePageCartPageRoute extends HomeEvent {}
