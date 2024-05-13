import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swan/infrastruture/banner_repo.dart';
import 'package:swan/presentation/brand/brand_page.dart';

class BrandList extends StatelessWidget {
  BrandList(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      required this.title,
      required this.bannerList});

  final double screenWidth;
  final double screenHeight;
  final String title;
  List<Map<String, dynamic>> bannerList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BrandPage(),
                            ));
                      },
                      child: Text("View All"))
                ],
              ),
              SizedBox(
                width: screenWidth,
                height: screenHeight / 4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Stack(
                        children: [
                          Container(
                            height: screenHeight / 4,
                            width: screenWidth / 3,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://swan.alisonsnewdemo.online/images/product/1696567935WSb5pa6poHnqy3qQAk8XSEMYP5BfaPJYUWBTA8d8.webp"))),
                            child: Center(
                              child: Text(
                                bannerList[index]['name'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
