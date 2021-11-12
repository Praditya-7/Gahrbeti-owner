// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreenOwner extends StatefulWidget {
  const HomeScreenOwner({Key? key}) : super(key: key);

  @override
  _HomeScreenOwnerState createState() => _HomeScreenOwnerState();
}

class _HomeScreenOwnerState extends State<HomeScreenOwner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
