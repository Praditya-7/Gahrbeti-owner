// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Tenants extends StatelessWidget {
  const Tenants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int tenantCount = 0;
    TextEditingController searchValue = TextEditingController();
    return Scaffold(
        backgroundColor: Color(0xffF4F4F4),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              height: 50.0,
              child: TextField(
                controller: searchValue,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff09548C),
                  ),
                  labelText: "Search by Name",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff09548C)),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
            tenantCount == 0
                ? Expanded(
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Center(child: Text("No Tenants Available")),
                    ),
                  )
                : Expanded(
                    child: Container(
                      child: Text("Tenants Available"),
                    ),
                  ),
            FloatingActionButton(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xff09548C),
                onPressed: () {}),
          ],
        ));
  }
}
