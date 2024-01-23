import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:furnitureapp/data/cartitem_data.dart';
import 'package:furnitureapp/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartEvent>((event, emit) {});

    on<CartInitialEvent>(cartInitialEvent);
    on<CartRomoveFromCartEvent>(cartRomoveFromCartEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cartItems));
  }

  FutureOr<void> cartRomoveFromCartEvent(
      CartRomoveFromCartEvent event, Emitter<CartState> emit) {
    cartItems.remove(event.cartItem);
    emit(CartSuccessState(cartItems: cartItems));
  }
}
