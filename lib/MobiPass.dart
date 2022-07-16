import 'package:flutter/material.dart';
import 'Location.dart';

class MobiPass extends StatefulWidget {
  const MobiPass({Key? key}) : super(key: key);

  @override
  State<MobiPass> createState() => _MobiPassState();
}

class _MobiPassState extends State<MobiPass> {
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
                Text('Enter your password',
                    style: TextStyle(
                        color: Color(0xff003134),
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Welcome back +923148138991',
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
                      hintText: 'Password',
                    )),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Forgot your password?',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.50,
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MobiPass()));
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Location()));
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Log in',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black26),
                          ),
                        ),
                        height: 50,
                        width: 345,
                        decoration: BoxDecoration(
                            color: Color(0xffE4E7EE),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
