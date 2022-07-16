import 'package:flutter/material.dart';
import 'package:olx/AccountPages/Help&Support.dart';
import 'package:olx/AccountPages/MyOrders.dart';
import 'package:olx/AccountPages/ProfileEdit.dart';
import 'package:olx/AccountPages/Setting.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('image/bi.jpg'),
                  radius: 50,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text(
                      'Kevin Profile',
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff003134)),
                    ),
                   GestureDetector(
                     onTap: (){setState(() {
Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileEdit()));
                     });},
                     child:  Text(
                     'View and edit profile',
                     style: TextStyle(
                         decoration: TextDecoration.underline,
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         color: Color(0xff003134)),
                   ),)
                  ],
                )
              ],
            ),
          ),
         GestureDetector(
           onTap: (){setState(() {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOrder()));
           });},
           child:  Padding(
           padding: EdgeInsets.only(top: 40, left: 20),
           child: Container(
             child: Row(
               children: [
                 Icon(
                   Icons.wallet_travel,
                   color: Color(0xff003134),
                 ),
                 SizedBox(
                   width: 15,
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'Buy Packages & My Orders',
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                           color: Color(0xff003134),
                           fontSize: 18),
                     ),
                     SizedBox(
                       height: 3,
                     ),
                     Text(
                       'Packages, orders, billing and invoices',
                       style:
                       TextStyle(fontSize: 15, color: Color(0xff003134)),
                     ),
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
          SizedBox(
            height: 35,
            width: 350,
            child: Divider(
              thickness: 1,
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
              });
            },
            child: Padding(
            padding: EdgeInsets.only(top: 5, left: 20),
            child: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Color(0xff003134),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Settings',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff003134),
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Privacy and logout',
                        style:
                        TextStyle(fontSize: 15, color: Color(0xff003134)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 160,
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
          SizedBox(
            height: 35,
            width: 350,
            child: Divider(
              thickness: 1,
            ),
          ),
          GestureDetector(
            onTap: (){setState(() {

              Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpAndSupport()));
            });},
            child: Padding(
            padding: EdgeInsets.only(top: 5, left: 20),
            child: Container(
              child: Row(
                children: [
                  ImageIcon(
                    AssetImage('image/olx12.png'),
                    color: Color(0xff003134),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Help & Support',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff003134),
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Help center and legal terms',
                        style:
                        TextStyle(fontSize: 15, color: Color(0xff003134)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 95,
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
          SizedBox(
            height: 35,
            width: 350,
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}
