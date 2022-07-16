import 'package:flutter/material.dart';
import 'EmailPass.dart';
class EmailSI extends StatefulWidget {
  const EmailSI({Key? key}) : super(key: key);

  @override
  State<EmailSI> createState() => _EmailSIState();
}

class _EmailSIState extends State<EmailSI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( elevation: 0.2, title: Text("Login",style: TextStyle(fontSize: 18,color: Color(0xff003134),fontWeight: FontWeight.bold),),  leading: Icon(    Icons.arrow_back_ios_new_sharp,color: Color(0xff003134),size: 20,  ),backgroundColor: Color(0xffFAFAFA),),
      body: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(top: 20,left: 20),child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30.0,
            child: ClipRRect(
              child: Image.asset('image/bi.jpg'),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          SizedBox(height: 15,),
          Text('Enter your email',style: TextStyle(color: Color(0xff003134),fontWeight: FontWeight.bold,fontSize: 15)),
          Padding(padding: EdgeInsets.only(top: 20),child: SizedBox(
            height: 45,
            width: 340,
            child: TextField(
                decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff003134), width: 1.0),
                  ),
                  hintText: 'Email',
                )),)
            ,),
          SizedBox(height: MediaQuery.of(context).size.height*0.6,),
          GestureDetector(
            onTap: (){setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EPass()));
            });},
            child: Container(
            child:
            Center(child: Text('Next',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black26),),),
            height: 50,
            width: 345,
            decoration: BoxDecoration(color: Color(0xffE4E7EE),borderRadius: BorderRadius.circular(5)),
          ),)

        ],),),)
    );
  }
}
