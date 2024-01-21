import 'package:flutter/material.dart';
import 'package:furnitureapp/features/home/bloc/home_bloc.dart';
import 'package:furnitureapp/features/home/models/home_product_data_model.dart';

class DataTile extends StatelessWidget {
  const DataTile(
      {super.key, required this.productDataModel, required this.homeBloc});
  final ProductDataModel productDataModel;
  final HomeBloc homeBloc;

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
                  IconButton(
                    onPressed: () {
                      homeBloc.add(HomePageWhishListButtonClicked());
                    },
                    icon: const Icon(Icons.favorite_border),
                  ),
                  IconButton(
                      onPressed: () {
                        homeBloc.add(HomePageCartButtonClicked());
                      },
                      icon: const Icon(Icons.shopping_bag))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
