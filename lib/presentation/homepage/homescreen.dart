import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:swan/infrastruture/banner_repo.dart';
import 'package:swan/presentation/homepage/widgets/banner.dart';
import 'package:swan/presentation/homepage/widgets/brandList.dart';
import 'package:swan/presentation/homepage/widgets/suggestedList.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getBannerList();
    getBrandList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('lib/assets/logo.png'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.card_travel_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeScreenBanner(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              bannerList: bannerList,
            ),
            BrandList(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              title: "Our Brands",
              bannerList: brandList,
            ),
            SuggestedList(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              title: "Suggested For You",
              bannerList: suggestedList,
            )
          ],
        ),
      ),
    );
  }
}
