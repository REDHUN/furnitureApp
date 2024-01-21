import 'package:flutter/material.dart';
import 'package:furnitureapp/widgets/image_slider.dart';
import 'package:furnitureapp/widgets/my_appdrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1000) {}
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
          ),
          MyAppDrawer(),
          ImageSlider(),
        ],
      ),
    );
  }
}
