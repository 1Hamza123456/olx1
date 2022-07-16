import 'package:flutter/material.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({Key? key}) : super(key: key);

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
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
            'Help and Support',
            style: TextStyle(
                fontSize: 17,
                color: Color(0xff003134),
                fontWeight: FontWeight.bold),
          )),
      body: Column(children: [
        GestureDetector(
          onTap: (){setState(() {

          });},
          child:  Padding(
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
                        'Help Center',
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
                          'See FAQ and contact support',
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

          });},
          child:  Padding(
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
                        'Feedback',
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
                          "Take a moment to let us know how we're doing",
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

          });},
          child:  Padding(
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
                        'Invite friends to OLX',
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
                          'Invite your friends to buy and sell',
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

          });},
          child:  Padding(
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
                        'Version',
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
                          '15.0.21615',
                          style:
                          TextStyle(fontSize: 14, color: Colors.black26),
                        ),)
                    ],
                  ),
                ],
              ),
            ),
          ),),
        SizedBox(height: 40,child: Divider(thickness: 2,color: Color(0xfff6f3f3),),),
      ],),
    );
  }
}
