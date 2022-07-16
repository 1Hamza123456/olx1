import 'package:flutter/material.dart';
import 'package:olx/Location.dart';

class EPass extends StatefulWidget {
  const EPass({Key? key}) : super(key: key);

  @override
  State<EPass> createState() => _EPassState();
}

class _EPassState extends State<EPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(top: 70,left: 20),child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Create a password',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff003134)),),
          SizedBox(height: 20,),
          SizedBox(
            width: 370,
            child:       Text('You are creating a password for xecoretunes@gmail.com. This will help you login faster next time'),),

          SizedBox(height: 25,),
          SizedBox(
            height: 45,
            width: 350,
            child:  TextField(
              decoration: InputDecoration(suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff003134), width: 1.0),
                ),
                hintText: 'Password',),
            ),),
          SizedBox(height: 25,),
          SizedBox(
            height: 45,
            width: 350,
            child:  TextField(
              decoration: InputDecoration(suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff003134), width: 1.0),
                ),
                hintText: 'Confirm new Password',),
            ),),
          SizedBox(height: MediaQuery.of(context).size.height*0.55,),
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Location()));
              });
            },
            child: Container(
              child:
              Center(child: Text('Save',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black26),),),
              height: 50,
              width: 345,
              decoration: BoxDecoration(color: Color(0xffE4E7EE),borderRadius: BorderRadius.circular(5)),
            ),)
        ],),),)

    );
  }
}
