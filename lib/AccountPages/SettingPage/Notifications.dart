import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool status1 = false;
  bool status2 = false;
  Color _textColor = Colors.black;
  Color _appBarColor = Color.fromRGBO(36, 41, 46, 1);
  Color _scaffoldBgcolor = Colors.white;
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
            'Notification',
            style: TextStyle(
                fontSize: 17,
                color: Color(0xff003134),
                fontWeight: FontWeight.bold),
          )),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only( left: 10,top: 20),
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
                      'Recommendations',
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
                        'Receive recommendations based on your activity',
                        style:
                        TextStyle(fontSize: 14, color: Colors.black26),
                      ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlutterSwitch(
                      width: 70.0,
                      height: 40.0,
                      toggleSize: 30.0,
                      value: status1,
                      borderRadius: 30.0,
                      padding: 1.0,
                      activeToggleColor: Colors.white,
                      inactiveToggleColor: Colors.white,
                      activeSwitchBorder: Border.all(
                        color: Color(0xFF003134),
                        width: 6.0,
                      ),
                      inactiveSwitchBorder: Border.all(
                        color: Color(0xFFD1D5DA),
                        width: 6.0,
                      ),
                      activeColor: Color(0xFF003134),
                      inactiveColor: Colors.white,
                      activeIcon: Icon(
                        Icons.check,
                        color: Color(0xFF003134),
                      ),
                      inactiveIcon: Icon(
                        Icons.close_rounded,
                        color: Color(0xFF003134),
                      ),
                      onToggle: (val) {
                        setState(() {
                          status1 = val;

                          if (val) {
                            _textColor = Colors.white;
                            _appBarColor = Color.fromRGBO(22, 27, 34, 1);
                            _scaffoldBgcolor = Color(0xFF0D1117);
                          } else {
                            _textColor = Colors.black;
                            _appBarColor = Color.fromRGBO(36, 41, 46, 1);
                            _scaffoldBgcolor = Colors.white;
                          }
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 40,child: Divider(thickness: 2,color: Color(0xfff6f3f3),),),
        Padding(
          padding: EdgeInsets.only( left: 10,),
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
                      'Special communications & offers',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff003134),
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      width: 280,
                      child:  Text(
                        'Receive updates, offers, surveys and more',
                        style:
                        TextStyle(fontSize: 14, color: Colors.black26),
                      ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlutterSwitch(
                      width: 70.0,
                      height: 40.0,
                      toggleSize: 30.0,
                      value: status2,
                      borderRadius: 30.0,
                      padding: 1.0,
                      activeToggleColor: Colors.white,
                      inactiveToggleColor: Colors.white,
                      activeSwitchBorder: Border.all(
                        color: Color(0xFF003134),
                        width: 6.0,
                      ),
                      inactiveSwitchBorder: Border.all(
                        color: Color(0xFFD1D5DA),
                        width: 6.0,
                      ),
                      activeColor: Color(0xFF003134),
                      inactiveColor: Colors.white,
                      activeIcon: Icon(
                        Icons.check,
                        color: Color(0xFF003134),
                      ),
                      inactiveIcon: Icon(
                        Icons.close_rounded,
                        color: Color(0xFF003134),
                      ),
                      onToggle: (val) {
                        setState(() {
                          status2 = val;

                          if (val) {
                            _textColor = Colors.white;
                            _appBarColor = Color.fromRGBO(22, 27, 34, 1);
                            _scaffoldBgcolor = Color(0xFF0D1117);
                          } else {
                            _textColor = Colors.black;
                            _appBarColor = Color.fromRGBO(36, 41, 46, 1);
                            _scaffoldBgcolor = Colors.white;
                          }
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 40,child: Divider(thickness: 2,color: Color(0xfff6f3f3),),),
      ],),)
    ;
  }
}
