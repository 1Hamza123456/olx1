import 'package:flutter/material.dart';
final TextEditingController _controller = new TextEditingController();
var items = ['Residential', 'Business', ];
class BillinfInfo extends StatefulWidget {
  const BillinfInfo({Key? key}) : super(key: key);

  @override
  State<BillinfInfo> createState() => _BillinfInfoState();
}

class _BillinfInfoState extends State<BillinfInfo> {
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
            'Billing Information',
            style: TextStyle(
                fontSize: 17,
                color: Color(0xff003134),
                fontWeight: FontWeight.bold),
          )),
   body: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 20,top: 20),child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Text('Customer Type*',style: TextStyle(fontSize: 12,color: Color(0xff92A4A5)),),
       SizedBox(height: 5,),
       Container(
           height: 50,
           width: 350,
           decoration: BoxDecoration(
               border: Border.all(color: Color(0xff003134))
           ),
           child:
           Padding(padding: EdgeInsets.all(5),child: TextField(
             controller: _controller,
             decoration: InputDecoration(

                 hintText: 'Select a customer type',
                 hintStyle: TextStyle(fontSize: 14,color: Color(0xff92A4A5)),
                 suffixIcon: PopupMenuButton<String>(
                   icon: const Icon(Icons.arrow_drop_down),
                   onSelected: (String value) {
                     _controller.text = value;
                   },
                   itemBuilder: (BuildContext context) {
                     return items
                         .map<PopupMenuItem<String>>((String value) {
                       return new PopupMenuItem(
                           child: new Text(value), value: value);
                     }).toList();
                   },
                 ),
                 border: InputBorder.none
             ),
           ),)
       ),
       SizedBox(height: 30,),

       Text('Email',style: TextStyle(fontSize: 12,color: Color(0xff92A4A5)),),
       SizedBox(height: 5,),
       Container(
           height: 50,
           width: 350,
           decoration: BoxDecoration(
               border: Border.all(color: Color(0xff003134))
           ),
           child:
           Padding(padding: EdgeInsets.all(5),child: TextField(
             decoration: InputDecoration(
                 hintText: 'Enter your email',
                 hintStyle: TextStyle(fontSize: 14,color: Color(0xff92A4A5)),
                 border: InputBorder.none
             ),
           ),)
       ),
       SizedBox(height: 30,),

       Text('Customer Name',style: TextStyle(fontSize: 12,color: Color(0xff92A4A5)),),
       SizedBox(height: 5,),
       Container(
           height: 50,
           width: 350,
           decoration: BoxDecoration(
               border: Border.all(color: Color(0xff003134))
           ),
           child:
           Padding(padding: EdgeInsets.all(5),child: TextField(
             decoration: InputDecoration(
                 hintText: 'Enter your name',
                 hintStyle: TextStyle(fontSize: 14,color: Color(0xff92A4A5)),
                 border: InputBorder.none
             ),
           ),)
       ),

       SizedBox(height: 30,),

       Text('Business Name',style: TextStyle(fontSize: 12,color: Color(0xff92A4A5)),),
       SizedBox(height: 5,),
       Container(
           height: 50,
           width: 350,
           decoration: BoxDecoration(
               border: Border.all(color: Color(0xff003134))
           ),
           child:
           Padding(padding: EdgeInsets.all(5),child: TextField(
             decoration: InputDecoration(
                 hintText: 'Enter your business name',
                 hintStyle: TextStyle(fontSize: 14,color: Color(0xff92A4A5)),
                 border: InputBorder.none
             ),
           ),)
       ),


       SizedBox(height: 30,),

       Text('Phone Number',style: TextStyle(fontSize: 12,color: Color(0xff92A4A5)),),
       SizedBox(height: 5,),
       Container(
           height: 50,
           width: 350,
           decoration: BoxDecoration(
               border: Border.all(color: Color(0xff003134))
           ),
           child:
           Padding(padding: EdgeInsets.all(5),child: TextField(
             decoration: InputDecoration(
                 hintText: 'Enter your phone number',
                 hintStyle: TextStyle(fontSize: 14,color: Color(0xff92A4A5)),
                 border: InputBorder.none
             ),
           ),)
       ),



     ],),),)
    );  }
}
