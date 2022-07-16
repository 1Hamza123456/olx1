import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx/AccountPages/MyOrderPages/AddressInfo.dart';
import 'package:olx/AccountPages/MyOrderPages/BillingInfo.dart';
import 'package:olx/AccountPages/MyOrderPages/BuyPackage.dart';
import 'package:olx/AccountPages/MyOrderPages/DeliveryOrder.dart';
import 'package:olx/AccountPages/MyOrderPages/MyOrdersPackage.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
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
              color: Colors.black87,size: 20,
            ),
          ),
          title: Text(
                  'Bought Packages & Billing',
                  style: TextStyle(fontSize: 17, color: Color(0xff003134),fontWeight: FontWeight.bold),
                )),
      body: Column(children: [ GestureDetector(
        onTap: (){setState(() {
Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyPackage()));
        });},
        child:  Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Container(
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buy Packages',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff003134),
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      width: 280,
                      child:  Text(
                        'Sell faster, more & at higher margins with packages',
                        style:
                        TextStyle(fontSize: 14, color: Colors.black26),
                      ),)
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xff003134),
                  size: 30,
                )
              ],
            ),
          ),
        ),),
        SizedBox(height: 40,child: Divider(thickness: 2,color: Color(0xfff6f3f3),),),
        GestureDetector(
          onTap: (){setState(() {
Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOrderPackage()));
          });},
          child:  Padding(
            padding: EdgeInsets.only( left: 10),
            child: Container(
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Orders',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff003134),
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        width: 280,
                        child:  Text(
                          'Active, scheduled and expired orders',
                          style:
                          TextStyle(fontSize: 14, color: Colors.black26),
                        ),)
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xff003134),
                    size: 30,
                  )
                ],
              ),
            ),
          ),),
        SizedBox(height: 40,child: Divider(thickness: 2,color: Color(0xfff6f3f3),),),
        GestureDetector(
          onTap: (){setState(() {
Navigator.push(context, MaterialPageRoute(builder: (context)=>BillinfInfo()));
          });},
          child:  Padding(
            padding: EdgeInsets.only( left: 10),
            child: Container(
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Billing information',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff003134),
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        width: 280,
                        child:  Text(
                          'Edit your billing name, address, etc',
                          style:
                          TextStyle(fontSize: 14, color: Colors.black26),
                        ),)
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xff003134),
                    size: 30,
                  )
                ],
              ),
            ),
          ),),
        SizedBox(height: 40,child: Divider(thickness: 2,color: Color(0xfff6f3f3),),),
        GestureDetector(
          onTap: (){setState(() {
Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressInfo()));
          });},
          child:  Padding(
            padding: EdgeInsets.only( left: 10),
            child: Container(
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address information',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff003134),
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        width: 280,
                        child:  Text(
                          'Edit Your Address information',
                          style:
                          TextStyle(fontSize: 14, color: Colors.black26),
                        ),)
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xff003134),
                    size: 30,
                  )
                ],
              ),
            ),
          ),),
        SizedBox(height: 40,child: Divider(thickness: 2,color: Color(0xfff6f3f3),),),
        GestureDetector(
          onTap: (){setState(() {
Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryOrder()));
          });},
          child:  Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery Orders',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff003134),
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        width: 280,
                        child:  Text(
                          'Track your selling or buying delivery orders',
                          style:
                          TextStyle(fontSize: 14, color: Colors.black26),
                        ),)
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xff003134),
                    size: 30,
                  )
                ],
              ),
            ),
          ),),
        SizedBox(height: 40,child: Divider(thickness: 2,color: Color(0xfff6f3f3),),)
      ],)
    );
  }
}
