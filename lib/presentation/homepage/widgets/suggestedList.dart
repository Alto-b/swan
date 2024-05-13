import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swan/infrastruture/banner_repo.dart';

class SuggestedList extends StatelessWidget {
  SuggestedList(
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
                  TextButton(onPressed: () {}, child: Text("View All"))
                ],
              ),
              SizedBox(
                width: screenWidth,
                height: screenHeight / 2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bannerList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: screenHeight / 3.5,
                                width: screenWidth / 2.5,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                // child: Text(bannerList[index]['name']),
                                // child: Image.network("${bannerList[index]['image']}"),
                              ),
                              Positioned(
                                right: 10,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_outline)),
                              )
                            ],
                          ),
                          Text(
                            bannerList[index]['name'],
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            "OMR ${bannerList[index]['price']}",
                            style: TextStyle(fontWeight: FontWeight.w400),
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
