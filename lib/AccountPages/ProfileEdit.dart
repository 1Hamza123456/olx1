import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
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
                Icons.close,
                color: Colors.black87,
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Save',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  )),
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Basic information',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff003134)),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('image/bi.jpg'),
                      radius: 40,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            cursorColor: Theme.of(context).cursorColor,
                            maxLength: 20,
                            decoration: InputDecoration(
                              icon: Icon(Icons.drive_file_rename_outline),
                              labelText: 'Enter your name',
                              labelStyle: TextStyle(
                                color: Color(0xFF003134),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF003134)),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 350,
                  child: TextFormField(
                    cursorColor: Theme.of(context).cursorColor,
                    maxLength: 200,
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: 'Something about you',
                      labelStyle: TextStyle(
                        color: Color(0xFF003134),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF003134)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 340,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Text(
                  'Contact information',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff003134)),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 350,
                  child: TextFormField(
                    cursorColor: Theme.of(context).cursorColor,
                    maxLength: 20,
                    decoration: InputDecoration(
                      icon: Icon(Icons.phone),
                      labelText: 'Phone number',
                      labelStyle: TextStyle(
                        color: Color(0xFF003134),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF003134)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'This is the number for buyers contacts, reminders, and other notification',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 350,
                  child: TextFormField(
                    cursorColor: Theme.of(context).cursorColor,
                    maxLength: 20,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Color(0xFF003134),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF003134)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "This email will be useful to keep in touch. we won't share your private email address with other OLX users",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 340,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Text(
                  'Optional information',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff003134)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Facebook',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff003134)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  width: 350,
                  child: Center(
                    child: Text(
                      'Disconnect',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff003134)),
                      borderRadius: BorderRadius.circular(5)),
                ),
                SizedBox(
                  width: 330,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Sign in with Facebook and dicsover your trusted connections to buyer",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Google',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff003134)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  width: 350,
                  child: Center(
                    child: Text(
                      'Connect',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff003134)),
                      borderRadius: BorderRadius.circular(5)),
                ),
                SizedBox(
                  width: 330,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Connect your OLX account to Google account for simplicity and ease",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 340,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Text(
                  'Delete this account',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff003134)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Are you sure you want to delete your account?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff003134)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  width: 350,
                  child: Center(
                    child: Text(
                      'Yes, delete my account',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff003134)),
                      borderRadius: BorderRadius.circular(5)),
                ),
                SizedBox(height: 10,),
                Text(
                  'See more info',
                  style: TextStyle(decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold, color: Color(0xff003134)),
                ),
                SizedBox(height: 20,)

              ],
            ),
          ),
        ));
  }
}
