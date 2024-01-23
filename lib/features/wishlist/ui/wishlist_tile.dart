import 'package:flutter/material.dart';
import 'package:furnitureapp/features/home/models/home_product_data_model.dart';
import 'package:furnitureapp/features/wishlist/bloc/wishlist_bloc.dart';

class WishlistTile extends StatelessWidget {
  const WishlistTile(
      {super.key, required this.wishlistBloc, required this.productDataModel});
  final ProductDataModel productDataModel;
  final WishlistBloc wishlistBloc;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.teal, width: 3),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(productDataModel.imageUrl),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            productDataModel.name,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(productDataModel.description),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$ ${productDataModel.price}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  // IconButton(
                  //   onPressed: () {
                  //     // homeBloc.add(HomePageWhishListButtonClicked(
                  //     //     clickedProduct: productDataModel));
                  //   },
                  //   icon: const Icon(Icons.favorite_border),
                  // ),
                  IconButton(
                      onPressed: () {
                        wishlistBloc.add(WishListRemoveEvent(
                            wishlistitem: productDataModel));
                      },
                      icon: const Icon(Icons.delete))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
