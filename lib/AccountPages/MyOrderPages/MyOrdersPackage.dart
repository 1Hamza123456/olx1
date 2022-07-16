import 'package:flutter/material.dart';

class MyOrderPackage extends StatefulWidget {
  const MyOrderPackage({Key? key}) : super(key: key);

  @override
  State<MyOrderPackage> createState() => _MyOrderPackageState();
}

class _MyOrderPackageState extends State<MyOrderPackage> {
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
              'My Orders',
              style: TextStyle(
                  fontSize: 17,
                  color: Color(0xff003134),
                  fontWeight: FontWeight.bold),
            )),
        body: SingleChildScrollView(
          child: DefaultTabController(
              length: 3,
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
                              Tab(text: "SCHEDULED"),
                              Tab(text: "EXPIRED"),
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
                                  color: Color(0xffEAEEEF),
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
                                                'image/NoOrder.png')),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Text(
                                        'Nothing here...',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("You don't have any active orders.",style: TextStyle(fontSize: 12,color: Color(0xffA5B4B5)),),
                                    ],
                                  ),
                                ),

                              ],
                            )),
                            SafeArea(
                                child: Column(
                              children: [
                                Container(
                                  color: Color(0xffEAEEEF),
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
                                                'image/NoOrder.png')),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Text(
                                        'Nothing here...',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("You don't have any scheduled orders.",style: TextStyle(fontSize: 12,color: Color(0xffA5B4B5)),),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                            SafeArea(
                                child: Column(
                              children: [
                                Container(
                                  color: Color(0xffEAEEEF),
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
                                                'image/NoOrder.png')),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Text(
                                        'Nothing here...',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("You don't have any expired orders.",style: TextStyle(fontSize: 12,color: Color(0xffA5B4B5)),),
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
        ));
  }
}
