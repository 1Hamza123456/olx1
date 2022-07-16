import 'package:flutter/material.dart';
import 'package:olx/AccountPages/MyOrderPages/DeliveryOrderPage/BuyingOrder.dart';
import 'package:olx/AccountPages/MyOrderPages/DeliveryOrderPage/SellingOrder.dart';
class DeliveryOrder extends StatefulWidget {
  const DeliveryOrder({Key? key}) : super(key: key);

  @override
  State<DeliveryOrder> createState() => _DeliveryOrderState();
}

class _DeliveryOrderState extends State<DeliveryOrder> {
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
            'Delivery Orders',
            style: TextStyle(
                fontSize: 17,
                color: Color(0xff003134),
                fontWeight: FontWeight.bold),
          )),
      body: Column(children: [
        GestureDetector(
          onTap: (){setState(() {
Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyingOrder()));
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
                        'Buying Orders',
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
                          'See your active or archived buying orders',
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
Navigator.push(context, MaterialPageRoute(builder: (context)=>SellingOrder()));
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
                        'Selling Orders',
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
                          'See your active or archived selling orders',
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
      ],),
    );
  }
}
