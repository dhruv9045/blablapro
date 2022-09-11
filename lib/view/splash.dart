import 'package:blablapro/constant/color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
            AppColor.cGradientBlue,AppColor.cGradientLightBlue
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          tileMode:TileMode.mirror 
          )
        ),
      ),
    );
  }
}
