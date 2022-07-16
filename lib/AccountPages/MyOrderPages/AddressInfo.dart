import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx/AccountPages/MyOrderPages/AddressInfoPage/AddressInfoPage.dart';
class AddressInfo extends StatefulWidget {
  const AddressInfo({Key? key}) : super(key: key);

  @override
  State<AddressInfo> createState() => _AddressInfoState();
}

class _AddressInfoState extends State<AddressInfo> {
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
            'Addresses List',
            style: TextStyle(
                fontSize: 17,
                color: Color(0xff003134),
                fontWeight: FontWeight.bold),


          ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Color(0xff003134),
            ),
            onPressed: () {
setState(() {
  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressInfoPage()));
});
            },
          )
        ],),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.25,),
        SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width*1,
          child:
        Image(image: AssetImage('image/Address.png')),),
          SizedBox(height: 10,),
          Text('You have no address yet',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xff003134)),)
      ],),
    );
  }
}
