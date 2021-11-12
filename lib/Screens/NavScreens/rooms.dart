// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:gharbetiowner/Screens/owner/listings/listing_detail.dart';

class Rooms extends StatelessWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListingDetail()));
              },
              child: Text("Rooms")),
        ),
        Container(
          child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListingDetail()));
              },
              child: Text(" Tenant Rooms")),
        ),
      ],
    );
  }
}
