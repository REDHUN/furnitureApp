import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:furnitureapp/data/wishlist_data.dart';
import 'package:furnitureapp/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistEvent>((event, emit) {});

    on<WishListItemInitialEvent>(wishListItemInitialEvent);
    on<WishListRemoveEvent>(wishListRemoveEvent);
  }

  FutureOr<void> wishListItemInitialEvent(
      WishListItemInitialEvent event, Emitter<WishlistState> emit) {
    emit(WishListLoadedSccessState(wishListItems: wishListItems));
  }

  FutureOr<void> wishListRemoveEvent(
      WishListRemoveEvent event, Emitter<WishlistState> emit) {
    wishListItems.remove(event.wishlistitem);

    emit(WishListLoadedSccessState(wishListItems: wishListItems));
  }
}
