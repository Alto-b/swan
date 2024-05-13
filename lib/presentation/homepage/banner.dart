import 'package:flutter/material.dart';

class HomeScreenBanner extends StatelessWidget {
  const HomeScreenBanner({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

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
        ),
        Text("data"),
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
