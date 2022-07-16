import 'package:flutter/material.dart';
import 'MobiPass.dart';

class MobiSU extends StatefulWidget {
  const MobiSU({Key? key}) : super(key: key);

  @override
  State<MobiSU> createState() => _MobiSUState();
}

class _MobiSUState extends State<MobiSU> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.2,
          title: Text(
            "Login",
            style: TextStyle(
                fontSize: 18,
                color: Color(0xff003134),
                fontWeight: FontWeight.bold),
          ),
          leading: GestureDetector(
            onTap: (){
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Color(0xff003134),
              size: 20,
            ),),
          backgroundColor: Color(0xffFAFAFA),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  child: ClipRRect(
                    child: Image.asset('image/bi.jpg'),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Enter your phone',
                    style: TextStyle(
                        color: Color(0xff003134),
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'We will send a confirmation code to your phone',
                  style: TextStyle(color: Colors.black87),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 45,
                    width: 340,
                    child: TextField(
                        decoration: new InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff003134), width: 1.0),
                      ),
                      hintText: 'Phone Number',
                    )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MobiPass()));
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black26),
                      ),
                    ),
                    height: 50,
                    width: 345,
                    decoration: BoxDecoration(
                        color: Color(0xffE4E7EE),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
