import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAppDrawer extends StatelessWidget {
  const MyAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1000) {
      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                //margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
                width: 50,
                height: 50,
                child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/appdrawericon.svg',
                      fit: BoxFit.contain,
                    )),
              ),
              const Text(
                'Furniture App',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              // Container(
              //   //margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
              //   width: 50,
              //   height: 50,
              //   child: IconButton(
              //       onPressed: () {},
              //       icon: SvgPicture.asset(
              //         'assets/icons/love.svg',
              //         fit: BoxFit.contain,
              //       )),
              // ),
              SizedBox(
                //margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
                width: 50,
                height: 50,
                child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/carticon.svg',
                      fit: BoxFit.contain,
                    )),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(40),
            padding: EdgeInsets.only(left: 25),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 252, 252),
                borderRadius: BorderRadius.circular(30)),
            height: 50,
            width: double.infinity,
            child: const TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  icon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black))),
            ),
          ),
        ],
      );
    }
    // if (MediaQuery.of(context).size.width < 1000) {
    //   return Text('tablet');
    // }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'Furniture App',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200, spreadRadius: 4, blurRadius: 7)
              ],
              borderRadius: BorderRadius.circular(20)),
          height: 50,
          width: 500,
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                icon: Icon(Icons.search)),
          ),
        ),
        Container(
          //margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
          width: 50,
          height: 50,
          child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/love.svg',
                fit: BoxFit.contain,
              )),
        ),
        Container(
          //margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
          width: 50,
          height: 50,
          child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/carticon.svg',
                fit: BoxFit.contain,
              )),
        ),
      ],
    );
  }
}
