import 'package:flutter/material.dart';
import 'package:olx/AccountPages/SettingPage/Notifications.dart';
import 'package:olx/AccountPages/SettingPage/Privacy.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
              'Settings',
              style: TextStyle(
                  fontSize: 17,
                  color: Color(0xff003134),
                  fontWeight: FontWeight.bold),
            )),
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Privacy()));

                });
              },
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Privacy',
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
                            child: Text(
                              'Phone number visibility',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black26),
                            ),
                          )
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
              ),
            ),
            SizedBox(
              height: 40,
              child: Divider(
                thickness: 2,
                color: Color(0xfff6f3f3),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));

                });
              },
              child: Padding(
                padding: EdgeInsets.only( left: 10),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Notifications',
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
                            child: Text(
                              'Recommendations and special communication',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black26),
                            ),
                          )
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
              ),
            ),
            SizedBox(
              height: 40,
              child: Divider(
                thickness: 2,
                color: Color(0xfff6f3f3),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: Padding(
                padding: EdgeInsets.only( left: 10),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Logout',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff003134),
                                fontSize: 18),
                          ),


                        ],
                      ),
                      SizedBox(
                        width: 260,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xff003134),
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
              child: Divider(
                thickness: 2,
                color: Color(0xfff6f3f3),
              ),
            ),
          ],
        ));
  }
}
