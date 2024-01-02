import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final imgList = [
  //Image.asset(name),

  Container(
    margin: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      image: DecorationImage(
        image: NetworkImage(
            "https://images.unsplash.com/photo-1540638349517-3abd5afc5847?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        fit: BoxFit.cover,
      ),
    ),
  ),

  Container(
    margin: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      image: DecorationImage(
        image: NetworkImage(
            "https://images.unsplash.com/photo-1554295405-abb8fd54f153?q=80&w=1526&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        fit: BoxFit.cover,
      ),
    ),
  ),

  Container(
    margin: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      image: DecorationImage(
        image: NetworkImage(
            "https://images.unsplash.com/photo-1616486338812-3dadae4b4ace?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        fit: BoxFit.cover,
      ),
    ),
  ),

  Container(
    margin: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      image: DecorationImage(
        image: NetworkImage(
            "https://images.unsplash.com/photo-1616486338812-3dadae4b4ace?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        fit: BoxFit.cover,
      ),
    ),
  ),

  Container(
    margin: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      image: DecorationImage(
        image: NetworkImage(
            "https://images.unsplash.com/photo-1538688525198-9b88f6f53126?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        fit: BoxFit.cover,
      ),
    ),
  ),

  Container(
    margin: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      image: DecorationImage(
        image: NetworkImage(
            "https://images.unsplash.com/photo-1618220179428-22790b461013?q=80&w=1527&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        fit: BoxFit.cover,
      ),
    ),
  ),

  Container(
    margin: const EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      image: const DecorationImage(
        image: NetworkImage(
            "https://media.istockphoto.com/id/520536109/photo/contemporary-elegant-luxury-living-room.jpg?s=1024x1024&w=is&k=20&c=MnSbAb7owHQ6xncYBsYgdVLiypEqEY_cNUJWcAsp8j8="),
        fit: BoxFit.cover,
      ),
    ),
  ),
];

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  var mycurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // color: Colors.amber,
      ),
      margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
      //color: Colors.amber,
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        options: CarouselOptions(
            viewportFraction: 1,
            padEnds: false,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            onPageChanged: (index, reason) {
              setState(() {
                mycurrentIndex = index;
              });
            },
            autoPlay: true,
            //height: 200,
            autoPlayCurve: Curves.fastOutSlowIn),
        items: imgList,
      ),
    );
  }
}
