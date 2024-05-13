import 'package:flutter/material.dart';
import 'package:swan/presentation/homepage/homescreen.dart';

class BnbPage extends StatefulWidget {
  const BnbPage({super.key});

  @override
  State<BnbPage> createState() => _BnbPageState();
}

class _BnbPageState extends State<BnbPage> {
  int indexNum = 0;

  List screen = const [
    HomeScreen(),
    //ProfilePage(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen.elementAt(indexNum),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Swan"),
          // BottomNavigationBarItem(icon: Icon(Icons.tag), label: "Brands"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("lib/assets/tag.png")),
              label: "Brands"),
          BottomNavigationBarItem(
              icon: Icon(Icons.offline_pin_rounded), label: "Best Items"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("lib/assets/category.png")),
              label: "category"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "Account"),
        ],
        currentIndex: indexNum,
        showUnselectedLabels: true,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
      ),
    );
  }
}
