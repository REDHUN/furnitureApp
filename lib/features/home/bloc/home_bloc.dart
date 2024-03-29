import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:furnitureapp/data/cartitem_data.dart';
import 'package:furnitureapp/data/furniture_data.dart';
import 'package:furnitureapp/data/wishlist_data.dart';
import 'package:furnitureapp/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomePageWhishListButtonClicked>(homePageWhishListButtonClicked);
    on<HomePageCartButtonClicked>(homePageCartButtonClicked);
    on<HomePageWhishListPageRoute>(homePageWhishListPageRoute);
    on<HomePageCartPageRoute>(homePageCartPageRoute);
    on<HomeInitialEvent>(homeInitialEvent);
  }
  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    try {
      emit(HomeLoadingSuccessState(
          product: FurintureData.furnitureList
              .map((e) => ProductDataModel(
                  id: e['id'],
                  name: e['name'],
                  description: e['description'],
                  price: e['price'],
                  imageUrl: e['imageUrl']))
              .toList()));
    } catch (e) {
      print(e.toString());
    }
  }

  FutureOr<void> homePageWhishListButtonClicked(
      HomePageWhishListButtonClicked event, Emitter<HomeState> emit) {
    wishListItems.add(event.clickedProduct);
    emit(HomeProductItemWishlistedActionState());
  }

  FutureOr<void> homePageCartButtonClicked(
      HomePageCartButtonClicked event, Emitter<HomeState> emit) {
    cartItems.add(event.clickedProduct);
    emit(CartProductAddedActionState());
  }

  FutureOr<void> homePageWhishListPageRoute(
      HomePageWhishListPageRoute event, Emitter<HomeState> emit) {
    emit(HomeNavigateToWishListPageActionState());
  }

  FutureOr<void> homePageCartPageRoute(
      HomePageCartPageRoute event, Emitter<HomeState> emit) {
    emit(HomeNavigateToCartPageActionState());
  }
}
