import 'package:flutter/material.dart';

class AddressInfoPage extends StatefulWidget {
  const AddressInfoPage({Key? key}) : super(key: key);

  @override
  State<AddressInfoPage> createState() => _AddressInfoPageState();
}

class _AddressInfoPageState extends State<AddressInfoPage> {
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
            'Address Information',
            style: TextStyle(
                fontSize: 17,
                color: Color(0xff003134),
                fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 20,top: 20),child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Address Name *',style: TextStyle(fontSize: 12,color: Color(0xff92A4A5)),),
          SizedBox(height: 5,),
          Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff003134)),borderRadius: BorderRadius.circular(5)
              ),
              child:
              Padding(padding: EdgeInsets.only(left: 20),child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter the name of the address',
                    hintStyle: TextStyle(fontSize: 14,color: Color(0xff92A4A5)),
                    border: InputBorder.none
                ),
              ),)
          ),
          SizedBox(height: 30,),
          Text('State/Province *',style: TextStyle(fontSize: 12,color: Color(0xff92A4A5)),),
          SizedBox(height: 5,),
          Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff003134)),borderRadius: BorderRadius.circular(5)
              ),
              child:
              Padding(padding: EdgeInsets.only(left: 20),child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,

                ),
              ),)
          ),
          SizedBox(height: 30,),
          Text('Address line 1 *',style: TextStyle(fontSize: 12,color: Color(0xff92A4A5)),),
          SizedBox(height: 5,),
          Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff003134)),borderRadius: BorderRadius.circular(5)
              ),
              child:
              Padding(padding: EdgeInsets.only(left: 20),child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter your street',
                    hintStyle: TextStyle(fontSize: 14,color: Color(0xff92A4A5)),
                    border: InputBorder.none
                ),
              ),)
          ),
          SizedBox(height: 30,),
          Text('Address line 2 *',style: TextStyle(fontSize: 12,color: Color(0xff92A4A5)),),
          SizedBox(height: 5,),
          Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff003134)),borderRadius: BorderRadius.circular(5)
              ),
              child:
              Padding(padding: EdgeInsets.only(left: 20),child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter your building number',
                    hintStyle: TextStyle(fontSize: 14,color: Color(0xff92A4A5)),
                    border: InputBorder.none
                ),
              ),)
          ),
          SizedBox(height: 30,),
          Text('Notes',style: TextStyle(fontSize: 12,color: Color(0xff92A4A5)),),
          SizedBox(height: 5,),
          Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff003134)),borderRadius: BorderRadius.circular(5)
              ),
              child:
              Padding(padding: EdgeInsets.only(left: 20),child: TextField(
                decoration: InputDecoration(
                    hintText: 'Notes',
                    hintStyle: TextStyle(fontSize: 14,color: Color(0xff92A4A5)),
                    border: InputBorder.none
                ),
              ),)
          ),
          SizedBox(height: 130,),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
                color: Color(0xffEAEEEF),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                'Show Address',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffBFC3D0),
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],),),

      )
    );
  }
}
