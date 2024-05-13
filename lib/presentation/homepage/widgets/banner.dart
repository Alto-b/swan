import 'package:flutter/material.dart';

class HomeScreenBanner extends StatelessWidget {
  HomeScreenBanner(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      required this.bannerList});
  List<Map<String, dynamic>> bannerList;
  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight / 3.5,
          decoration: BoxDecoration(color: Colors.amber),
          child: Image.network(
              fit: BoxFit.cover,
              "https://swan.alisonsnewdemo.online/images/banner/${bannerList[0]['image']}"),
          // child: Text(
          //     "https://swan.alisonsnewdemo.online/images/banner/${bannerList[0]['image']}"),
        ),
        // Text("data"),
        Positioned(
            bottom: 5,
            right: 5,
            child: OutlinedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                onPressed: () {},
                child: Text(
                  "Shop Now",
                ))),
      ],
    );
  }
}
