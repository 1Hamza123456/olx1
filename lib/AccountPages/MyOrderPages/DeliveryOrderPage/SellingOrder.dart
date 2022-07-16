import 'package:flutter/material.dart';

class SellingOrder extends StatefulWidget {
  const SellingOrder({Key? key}) : super(key: key);

  @override
  State<SellingOrder> createState() => _SellingOrderState();
}

class _SellingOrderState extends State<SellingOrder> {
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
            'Selling Orders',
            style: TextStyle(
                fontSize: 17,
                color: Color(0xff003134),
                fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: DefaultTabController(
            length: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 1,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: TabBar(
                          indicator: BoxDecoration(
                              color: Color(0xff298CFF),
                              borderRadius: BorderRadius.circular(4)),
                          unselectedLabelColor: Color(0xffA1AAB1),
                          labelColor: Colors.white,
                          indicatorWeight: 2,
                          tabs: [
                            Tab(
                              text: "ACTIVE",
                            ),
                            Tab(text: "ARCHIVED"),

                          ]),
                    )),
                Column(children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 1,
                      width: MediaQuery.of(context).size.width,
                      child: TabBarView(
                        children: [
                          SafeArea(
                              child: Column(
                                children: [
                                  Container(
                                    color: Color(0xffF8F8F8),
                                    height:
                                    MediaQuery.of(context).size.height * 1,
                                    width: MediaQuery.of(context).size.width * 1,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 80,
                                        ),
                                        SizedBox(
                                          height: 250,
                                          width: 250,
                                          child: Image(
                                              image: AssetImage(
                                                  'image/orders.png')),
                                        ),
                                        Text(
                                          "You don't have any active orders!",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        SizedBox(height: 15,),
                                        SizedBox(
                                          width: 320,child:
                                        Text("Sell now any item that is eligible for delivery & recive your money to your dorestep",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Color(0xffA5B4B5)),),),
                                        SizedBox(height: 20,),Container(
                                          height: 50,
                                          width: 120,
                                          child: Center(
                                            child: Text(
                                              'Know more',
                                              style:
                                              TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xff003134)),
                                              borderRadius: BorderRadius.circular(5)),
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              )),
                          SafeArea(
                              child: Column(
                                children: [
                                  Container(
                                    color: Color(0xffF8F8F8),
                                    height:
                                    MediaQuery.of(context).size.height * 1,
                                    width: MediaQuery.of(context).size.width * 1,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 80,
                                        ),
                                        SizedBox(
                                          height: 250,
                                          width: 250,
                                          child: Image(
                                              image: AssetImage(
                                                  'image/orders.png')),
                                        ),
                                        Text(
                                          "You don't have any archived orders!",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        SizedBox(height: 15,),
                                        SizedBox(
                                          width: 320,child:
                                        Text("Sell now any item that is eligible for delivery & recive your moeny to your dorestep",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Color(0xffA5B4B5)),),),
                                        SizedBox(height: 20,),Container(
                                          height: 50,
                                          width: 120,
                                          child: Center(
                                            child: Text(
                                              'Know more',
                                              style:
                                              TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xff003134)),
                                              borderRadius: BorderRadius.circular(5)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),

                        ],
                      )),
                ]),
              ],
            )),
      ),
    );
  }
}
