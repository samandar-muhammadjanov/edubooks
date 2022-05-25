import 'package:edubooks/models/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);
  static const routeName = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> category = [
    {"image": "assets/images/b1.png", "title": "Lorem Ipsum\ndolar ?"},
    {"image": "assets/images/b2.png", "title": "Lorem Ipsum\ndolar ?"},
    {"image": "assets/images/b3.png", "title": "Lorem Ipsum\ndolar ?"},
    {"image": "assets/images/b4.png", "title": "Lorem Ipsum\ndolar ?"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 135,
        titleSpacing: 0,
        title: Container(
          height: 120,
          child: ListView.builder(
              itemCount: category.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Image.asset(
                        category[index]["image"],
                        width: 92,
                      ),
                      Positioned(
                        bottom: 15,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            category[index]["title"],
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromRGBO(229, 229, 229, 1)),
      ),
    );
  }
}
