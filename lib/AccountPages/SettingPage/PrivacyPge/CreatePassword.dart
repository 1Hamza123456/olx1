import 'package:flutter/material.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  bool _isObscure = true;
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
            'Create Password',
            style: TextStyle(
                fontSize: 17,
                color: Color(0xff003134),
                fontWeight: FontWeight.bold),
          ),
      ),
      body: Padding(padding: EdgeInsets.only(top: 20,left: 20),child: Column(children: [
        SizedBox(width: 350,height: 55,child: TextField(

          obscureText: _isObscure,
          decoration:
          InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff003134), width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff003134), width: 1.0,
                ),),
              hintText: 'Password',
              // this button is used to toggle the password visibility
              suffixIcon: IconButton(
                  icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  })
          ),

        ),),
        SizedBox(height: 30,),
        SizedBox(width: 350,height: 55,child: TextField(

          obscureText: _isObscure,
          decoration:
          InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff003134), width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff003134), width: 1.0,
                ),),
              hintText: 'Confirm new password',
              // this button is used to toggle the password visibility
              suffixIcon: IconButton(
                  icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  })
          ),

        ),),
        SizedBox(
          height: 60,
        ),
        Container(
          height: 55,
          width: 350,
          decoration: BoxDecoration(
              color: Color(0xffEAEEEF),
              borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Text(
              'Create password',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xffBFC3D0),
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],),)
    );
  }
}
