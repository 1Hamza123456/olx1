import 'package:flutter/material.dart';

class BuyPackage extends StatefulWidget {
  const BuyPackage({Key? key}) : super(key: key);

  @override
  State<BuyPackage> createState() => _BuyPackageState();
}

class _BuyPackageState extends State<BuyPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0.5,
            backgroundColor: Color(0xffFAFAFA),
            leading: IconButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black87,
                size: 20,
              ),
            ),
            title: Text(
              'Buy Packages',
              style: TextStyle(
                  fontSize: 17,
                  color: Color(0xff003134),
                  fontWeight: FontWeight.bold),
            )),
        body:SingleChildScrollView(child:  Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SELECT OPTIONS TO SHOW PACKAGES',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003134)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Category',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff003134),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color(0xffEAEEEF),
                height: 40,
                width: 350,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'No category selected',
                      style: TextStyle(fontSize: 13, color: Color(0xff7A9897)),
                    ),
                    SizedBox(
                      width: 182,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 13,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 550,
              ),
              Container(
                height: 45,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xffEAEEEF),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    'Show packages',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffBFC3D0),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
