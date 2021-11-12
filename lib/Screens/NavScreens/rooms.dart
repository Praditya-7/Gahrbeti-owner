// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import '../room_detail.dart';

class Rooms extends StatelessWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => RoomDetail()));
          },
          child: Text("Rooms")),
    );
  }
}
