import 'package:flutter/material.dart';

class MyADS extends StatefulWidget {
  const MyADS({Key? key}) : super(key: key);

  @override
  State<MyADS> createState() => _MyADSState();
}

class _MyADSState extends State<MyADS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('My Ads Screen'),),
    );
  }
}
