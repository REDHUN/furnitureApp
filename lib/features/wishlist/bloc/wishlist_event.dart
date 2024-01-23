part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistEvent {}

class WishListItemInitialEvent extends WishlistEvent {}

class WishListRemoveEvent extends WishlistEvent {
  final ProductDataModel wishlistitem;

  WishListRemoveEvent({required this.wishlistitem});
}
