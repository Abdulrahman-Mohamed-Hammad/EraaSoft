

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          leading: Icon(Icons.arrow_back_ios_new),
          title: Text("Doctor Proile"),
          centerTitle: true,
        ),
        body: Screen(),
      ),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(top:15, left:  10,right: 10),
            child: Row(
              spacing: 15,
              children: [
                CircleAvatar(maxRadius: 70,backgroundImage:  AssetImage("asset/11.png")),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr.Sayed Abdul-Aziz",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text("Eye Special"),
                    SizedBox(height: 7.0),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Text("3"),
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Expanded(
                      child: Row(
                        spacing: 20,
                        children: [
                          Buttons(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.call), Text("1")],
                            ),
                          ),
                          Buttons(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.call), Text("2")],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        
     
     Padding(
            padding: const EdgeInsets.all(10),
            child: Text("About"),
          ),
      

        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 8),
            child: const Text(
              "Professor of Eye Special - Former Head of Department of Eye Speacial, Cairo University",
              overflow: TextOverflow.visible,
            ),
          ),
        ),

        BoxData(
          children: [
            Data(icon: Icons.add_box_outlined, text: "Cleopatra Hospital"),
            Data(icon: Icons.access_time, text: "10 - 19"),
            Data(icon: Icons.location_on, text: "2 Gamaa Street, Giza"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(height: 2, color: Colors.black),
        ),

      
         Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: Text("Contact Info"),
          ),
       
        BoxData(
          children: [
            Data(icon: Icons.email, text: "dr@6.com"),
            Data(icon: Icons.call, text: "01032564823"),
            Data(icon: Icons.call, text: "01125466125"),
          ],
        ),
      BottomButtom(T:"CHat With Dr.sayer" ,color: Colors.green,), BottomButtom(T:"Book an Appointment" ,color: Colors.blue,)
      ],
    );
  }
}

class Data extends StatelessWidget {
  final IconData icon;
  final String text;
  const Data({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Container(width: 30,height: 30,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(90),
          ),
          child: Icon(color: Colors.white, icon,size: 20,),
        ),
        Text(text),
      ],
    );
  }
}

class Buttons extends StatelessWidget {
  Widget child;
  Buttons({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 50,width: 50,
      child: FloatingActionButton(
        foregroundColor: Colors.black,
        backgroundColor: Colors.lightBlue,
        onPressed: () {},
        child: child,
      ),
    );
  }
}

class BoxData extends StatelessWidget {
  final List<Widget> children;
  const BoxData({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(10),
        padding: EdgeInsets.all(8),
        child: Column(spacing: 8, children: children),
      ),
    );
  }
}



class BottomButtom extends StatelessWidget {
 final  String T;
 final Color color;

  const BottomButtom({super.key,required this.color,required this.T});



  @override
  Widget build(BuildContext context) {
    return   Expanded(flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                ),
              ),
              onPressed: () {},
              child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text(T)]),
            ),
          ),
        );
  }
}