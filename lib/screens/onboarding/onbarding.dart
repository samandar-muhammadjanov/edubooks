import 'package:edubooks/screens/language/language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
    Future.delayed( const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed(LanguageScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Onboarding.jpg"))),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/logo.svg"),
            const SizedBox(
              height: 24,
            ),
            Text("EduBooks".toUpperCase(),
                style: const TextStyle(fontFamily: "fair", fontSize: 56))
          ],
        ),
      ),
    ));
  }
}
