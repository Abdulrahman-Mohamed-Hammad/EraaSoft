import 'package:flutter/material.dart';
import 'package:task/Constants/ConstantFont.dart';
import 'package:task/Constants/ConstantsColors.dart';
import 'package:task/Constants/ConstantsIcons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -175,
            right: 0,
            top: 0,
            bottom: 0,
            child: Image.asset(Kicons.photoWelcome, fit: BoxFit.cover),
          ),

          Positioned(
            left: 30,
            right: 30,
            bottom: 74,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  Kicons.carrotcon,
                  width: 48,
                  height: 56,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome \nto our store",
                  style: Kfont.mainFont,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Ger your groceries in as fast as one hour",
                  style: Kfont.secound,
                ),
                SizedBox(height: 40),
                CustomElevatedButton(text: "Get Started", method:(){ Navigator.pushNamed(context, "C");}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final String text;

  final VoidCallback method;
  const CustomElevatedButton({
    super.key,
    required this.text,
   required this.method,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Kcolors.mainColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: method,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: Text(text, style: Kfont.mainFont.copyWith(fontSize: 16)),
            ),
          ),
        ),
      ],
    );
  }
}
