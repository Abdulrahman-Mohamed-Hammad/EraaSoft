import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/Constants/ConstantsColors.dart';
import 'package:task/Constants/ConstantsIcons.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'B');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainColor,
      body: Center(
        child: SvgPicture.asset(
          Kicons.splashIconSvg,
          width: 267.42,
          height: 68.61,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
