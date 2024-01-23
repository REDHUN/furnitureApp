part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistState {}

class WishListActionState extends WishlistState {}

final class WishlistInitial extends WishlistState {}

final class WishListLoadedSccessState extends WishlistState {
  final List<ProductDataModel> wishListItems;

  WishListLoadedSccessState({required this.wishListItems});
}
