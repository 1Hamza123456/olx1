import 'package:flutter/material.dart';
import 'package:olx/Home%20tab/Motors.dart';
import 'package:olx/HomePage.dart';

class Property extends StatefulWidget {
  const Property({Key? key}) : super(key: key);

  @override
  State<Property> createState() => _PropertyState();
}

class _PropertyState extends State<Property> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(top: 40, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      });},
                      child: ImageIcon(
                      AssetImage('image/OLXlogo.png'),
                      size: 40,
                    ),),
                    GestureDetector(
                      onTap: (){setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Motors()));
                      });},
                      child:  Row(
                        children: [
                          ImageIcon(
                            AssetImage(
                              'image/CarIcon.png',
                            ),
                            size: 20,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'OLX MOTORS',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),),
                    Padding(padding: EdgeInsets.only(right: 10),child: Row(
                      children: [
                        ImageIcon(
                          AssetImage('image/BI.png'),
                          size: 20,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'OLX PROPERTY',
                          style: TextStyle(fontSize: 12,color: Colors.blue),
                        )
                      ],
                    ),)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
