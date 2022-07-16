import 'package:flutter/material.dart';
import 'package:olx/HomePage.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(top: 30),child: Column(children: [
        Image(image: AssetImage('image/Nearme.PNG')),
        Padding(padding: EdgeInsets.only(top: 15),child:  SizedBox(
          width: 250,
          child: Text('Where do you want to buy/ sell products?',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff235053)),),),),
        Padding(padding: EdgeInsets.only(top: 10),child: SizedBox(
          width: 280,
          child:
          Text('To enjoy all that OLX has to offer you, we need to know where to look for them',textAlign: TextAlign.center,style: TextStyle(fontSize: 13
              ,color: Color(0xff6B8486)),),),),
        SizedBox(height: 25,),
        GestureDetector(
          onTap: (){setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          });},
          child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: const EdgeInsets.only(top: 8),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(color: Color(0xff003034),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.near_me_outlined,color: Colors.white,),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Near me',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),),
        SizedBox(height: 30,),
        Text('Other address',style: TextStyle(decoration: TextDecoration. underline,color: Color(0xff6B8486)),)
      ],),)));
  }
}
