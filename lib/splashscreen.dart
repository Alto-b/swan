import 'package:flutter/material.dart';
import 'package:swan/infrastruture/banner_repo.dart';
import 'package:swan/presentation/bnb.dart';

class LoaderPage extends StatefulWidget {
  const LoaderPage({super.key});

  @override
  State<LoaderPage> createState() => _LoaderPageState();
}

class _LoaderPageState extends State<LoaderPage> {
  @override
  void initState() {
    super.initState();
    loadAndNavigate();
  }

  Future<void> loadAndNavigate() async {
    await Future.wait([
      getBannerList(),
      getBrandList(),
      getSuggestedList(),
    ]);

    goToHome();
  }

  Future<void> goToHome() async {
    // await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (ctx) => BnbPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('lib/assets/logo.png')],
        ),
      ),
    );
  }
}
