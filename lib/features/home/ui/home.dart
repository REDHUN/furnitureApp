import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furnitureapp/features/cart/ui/cart.dart';
import 'package:furnitureapp/features/home/bloc/home_bloc.dart';
import 'package:furnitureapp/features/home/ui/data_tile.dart';
import 'package:furnitureapp/features/wishlist/ui/wishlist.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }

  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActionState) {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => Cart()));
        } else if (state is HomeNavigateToWishListPageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (ctx) => WishList()));
        } else if (state is HomeProductItemWishlistedActionState) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Product Wishlisted')));
        } else if (state is CartProductAddedActionState) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Product added to cart')));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );

          case HomeLoadingSuccessState:
            final successState = state as HomeLoadingSuccessState;
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.teal,
                title: const Text("Furniture"),
                actions: [
                  IconButton(
                    onPressed: () {
                      homeBloc.add(HomePageWhishListPageRoute());
                    },
                    icon: const Icon(Icons.favorite_border),
                  ),
                  IconButton(
                      onPressed: () {
                        homeBloc.add(HomePageCartPageRoute());
                      },
                      icon: const Icon(Icons.shopping_bag))
                ],
              ),
              body: ListView.builder(
                  itemCount: successState.product.length,
                  itemBuilder: (context, index) {
                    return DataTile(
                      productDataModel: successState.product[index],
                      homeBloc: homeBloc,
                    );
                  }),
            );

          case HomeErrorState:
            return const Scaffold(
              body: Center(child: Text('Error')),
            );

          default:
            return SizedBox();
        }
      },
    );
  }
}
