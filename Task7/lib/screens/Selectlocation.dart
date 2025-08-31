import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/Constants/ConstantFont.dart';
import 'package:task/Constants/ConstantsIcons.dart';
import 'package:task/screens/Login.dart';
import 'package:task/screens/WelocmeScreen.dart';

class Selectlocation extends StatefulWidget {
  const Selectlocation({super.key});

  @override
  State<Selectlocation> createState() => _SelectlocationState();
}

class _SelectlocationState extends State<Selectlocation> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                
                Padding(
                  padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                  child: SvgPicture.asset(Kicons.mapSvg),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Select Your Location",
                    style: Kfont.mainFont.copyWith(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Swithch on your location to stay in tune with\nwhat’s happening in your area",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 160),
                CustomTextFormField(text: "Address",flag: false,error: " ",),
                SizedBox(height: 70),
                CustomElevatedButton(text: "Submit", method: () {
                   Navigator.pushReplacementNamed(context, "D");
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatefulWidget {
   CustomTextFormField({super.key, required this.text,  this.suffixIcon, required this.flag,required this.error,this.reqularExpresion});
final String text;
final  Widget? suffixIcon;
final bool flag;
 RegExp? reqularExpresion;
  final  FocusNode  finalfoucsNode =FocusNode();
String error;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  Widget? Temp ;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Temp =widget.suffixIcon;
    if(widget.flag){
    widget.finalfoucsNode.addListener((){
      if(widget.flag && widget.finalfoucsNode.hasFocus ){
        setState(() {
          Temp =Icon(Icons.visibility_off);
        });
      }
      else{
        setState(() {
        Temp =Icon(Icons.visibility);
          
        });
      }

    });}

  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(focusNode: widget.finalfoucsNode ,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        floatingLabelStyle: TextStyle(color: Colors.black),
        focusedBorder: UnderlineInputBorder(),
        border: UnderlineInputBorder(),
        label: Text(widget.text, style: TextStyle(fontSize: 20)),
        suffixIcon:Temp
    ),validator: (value) {
   if(value==null ||value.isEmpty ){
return widget.error;
   }
   return null;
    },);
  }
}


