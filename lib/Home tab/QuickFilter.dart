import 'package:flutter/material.dart';

class QuickFilter extends StatefulWidget {
  const QuickFilter({Key? key}) : super(key: key);

  @override
  State<QuickFilter> createState() => _QuickFilterState();
}

class _QuickFilterState extends State<QuickFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
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
              size: 20,
            ),
          ),
          title: Text(
            'Quick Filters',
            style: TextStyle(
                fontSize: 17,
                color: Color(0xff003134),
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
