import 'dart:async';
import 'dart:ui';
import 'MobiSU.dart';
import 'package:flutter/material.dart';
import 'EmailSI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Olx())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff001115),
        child: Container(
            child: Padding(
          padding: EdgeInsets.all(25),
          child: Image.asset('image/image.png'),
        )));
  }
}

class Olx extends StatefulWidget {
  const Olx({Key? key}) : super(key: key);

  @override
  State<Olx> createState() => _OlxState();
}

class _OlxState extends State<Olx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                  size: MediaQuery.of(context).size.width*0.07,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.17,
            width: MediaQuery.of(context).size.width*0.36,
            child: Image(
                image: AssetImage(
                  'image/olx12.png',
                )),
          ),
          Text(
            'WELCOME TO OLX',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff003134),
                fontSize: MediaQuery.of(context).size.width*0.055),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width*0.74,
              child: Text(
                'The trusted community of buyers and sellers',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*0.032,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                margin: const EdgeInsets.only(top: 25),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('image/GI.png'),
                      height: MediaQuery.of(context).size.height*0.036,
                      width: MediaQuery.of(context).size.width*0.076,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.055,),
                    Text(
                      'Continue with Google',
                      style: TextStyle(
                          color: Color(0xff003134),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('image/FI.png'),

                        height: MediaQuery.of(context).size.height*0.036,
                        width: MediaQuery.of(context).size.width*0.060,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.055,
                      ),
                      Text(
                        'Continue with Facebook',
                        style: TextStyle(
                            color: Color(0xff003134),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailSI()));
            });},
            child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('image/EI.png'),

                      height: MediaQuery.of(context).size.height*0.036,
                      width: MediaQuery.of(context).size.width*0.060,),
                    SizedBox(width: MediaQuery.of(context).size.width*0.055,
                    ),
                    Text(
                      'Continue with Email',
                      style: TextStyle(
                          color: Color(0xff003134),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MobiSU()));
              });
            },
            child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('image/MI.jpg'),
                        height: MediaQuery.of(context).size.height*0.036,
                        width: MediaQuery.of(context).size.width*0.060,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.055,
                      ),
                      Text(
                        'Continue with Phone',
                        style: TextStyle(
                            color: Color(0xff003134),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),
          Text('If you continue you are accepting'),
          Text(
            'OLX Terms and Conditions and Privacy Policy',
            style: TextStyle(fontSize: 15),
          )
        ],
      ),)
    );
  }
}
/*class ReusableIT extends StatelessWidget {
  final String inputTtext;
  final image;

  ReusableIT ({required this.inputTtext,this.image});
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 5,
      child: ListTile(
        leading: image,
        trailing: Text(inputTtext)
      ),
    );
  }
}*/
