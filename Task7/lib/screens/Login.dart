import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/Constants/ConstantFont.dart';
import 'package:task/Constants/ConstantsColors.dart';
import 'package:task/Constants/ConstantsIcons.dart';
import 'package:task/screens/Selectlocation.dart';
import 'package:task/screens/WelocmeScreen.dart';

class Login extends StatelessWidget {
  Login({super.key});
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
                  "Login",
                  style: Kfont.mainFont.copyWith(fontSize: 26, color: Colors.black),
                ),
                SizedBox(height: 10,),
                Text("Enter your emails and password",style: Kfont.secound.copyWith(fontSize: 16, color:Kcolors.gray1)),
                SizedBox(height: 30,),
               CustomTextFormField(text:"Email",flag: false,error: "Isn't valid Email",),
                SizedBox(height: 30,),
               CustomTextFormField(text: "Password",flag: true,suffixIcon: Icon(Icons.visibility),error: "password isn't Correct",),
                SizedBox(height:15),
                SizedBox(width: double.infinity,child: Text("Forgot Password?",style: Kfont.secound.copyWith(fontSize: 14, color:Kcolors.gray1),textAlign: TextAlign.end,)),
                
                Padding(padding: EdgeInsets.only(top: 31,bottom:24.8 ),child: CustomElevatedButton(text:"Login",method:(){if(form.currentState!.validate()){
                 Navigator.pushNamed(context, "F");
                }})),
                Row(mainAxisAlignment: MainAxisAlignment.center,spacing:3,children: [Text("Don’t have an account?"),InkWell(onTap: () {
                       Navigator.pushReplacementNamed(context, "E");
                },child: Text("Sigup",style: Kfont.secound.copyWith(fontSize: 14, color:Kcolors.mainColor,fontWeight: FontWeight.bold),),)],),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
