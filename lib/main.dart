import 'package:edubooks/models/app_bar.dart';
import 'package:edubooks/screens/home/home_screen.dart';
import 'package:edubooks/screens/language/language.dart';
import 'package:edubooks/screens/onboarding/onbarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Edu Books",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "fair",
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0,
              foregroundColor: Colors.black)),
      debugShowCheckedModeBanner: false,
      initialRoute: "onbarding",
      routes: {
        "onbarding": (ctx) => const Onboarding(),
        LanguageScreen.routeName: (ctx) => const LanguageScreen(),
        HomeScreen.routeName: (ctx) => const HomeScreen()
      },
    );
  }
}
