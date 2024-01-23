part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}

class CartInitialEvent extends CartEvent {}

class CartRomoveFromCartEvent extends CartEvent {
  final ProductDataModel cartItem;

  CartRomoveFromCartEvent({required this.cartItem});
}
