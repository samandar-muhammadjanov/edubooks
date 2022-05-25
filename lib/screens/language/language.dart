import 'package:edubooks/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);
  static const routeName = "language_screen";
  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/language_back.svg",
                fit: BoxFit.cover,
              ),
              SvgPicture.asset("assets/images/language.svg"),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Text(
              "What language would you like continue in?",
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          language("O‘zbekcha", context),
          language("Русский", context),
          language("English", context),
        ],
      ),
    );
  }
}

Widget language(text, context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
      child: Text(text, style: const TextStyle(fontSize: 18)),
      style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(227, 227, 232, 1),
          onPrimary: Colors.black,
          shadowColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          elevation: 0,
          minimumSize: const Size(335, 52)),
    ),
  );
}
