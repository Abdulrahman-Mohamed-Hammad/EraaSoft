import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/Constants/ConstantFont.dart';
import 'package:task/Constants/ConstantsColors.dart';
import 'package:task/Constants/ConstantsIcons.dart';
import 'package:task/screens/Selectlocation.dart';
import 'package:task/screens/WelocmeScreen.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 25),
          child: Form(
           key: form,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 51,bottom: 75),
                  child: Align(child: SvgPicture.asset(Kicons.carrotColorSvg)),
                ),
                
                Text(
                  "Sign Up",
                  style: Kfont.mainFont.copyWith(fontSize: 26, color: Colors.black),
                ),
                SizedBox(height: 10,),
                Text("Enter your credentials to continue",style: Kfont.secound.copyWith(fontSize: 16, color:Kcolors.gray1)),
               CustomTextFormField(text:"Username",flag: false,error: "Isn't valid userName",),

                SizedBox(height: 30,),
               CustomTextFormField(text:"Email",flag: false,error: "Isn't valid Email",),
                SizedBox(height: 30,),
               CustomTextFormField(text: "Password",flag: true,suffixIcon: Icon(Icons.visibility),error: "password isn't Correct",),
                SizedBox(height:15),
                SizedBox(width: double.infinity,child: Text("Forgot Password?",style: Kfont.secound.copyWith(fontSize: 14, color:Kcolors.gray1),textAlign: TextAlign.end,)),
                
                Padding(padding: EdgeInsets.only(top: 31,bottom:24.8 ),child: CustomElevatedButton(text:"Sign Up",method:(){if(form.currentState!.validate()){
                 Navigator.pushNamed(context, "D");
                }})),
                Row(mainAxisAlignment: MainAxisAlignment.center,spacing:3,children: [Text("Already have an account?"),InkWell(onTap: () {
                  Navigator.pushReplacementNamed(context, "D");
                },child: Text("Login",style: Kfont.secound.copyWith(fontSize: 14, color:Kcolors.mainColor,fontWeight: FontWeight.bold),),)],),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
