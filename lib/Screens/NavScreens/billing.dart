// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gharbetiowner/Screens/recent_payments.dart';

import '../issued_bills.dart';

class Billing extends StatelessWidget {
  const Billing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String paymentStatus = "Complete";
    String billStatus = "issued";
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
              child: Text(
                "Issued Bill",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10.0, 0, 10),
              padding: EdgeInsets.all(10.0),
              color: Color(0xffF4F5F9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Rs. 9000.00',
                        style: TextStyle(
                          color: Color(0xff09548c),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        // ignore: prefer_adjacent_string_concatenation
                        'Monthly Rent: Bhadra',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Bill Date'),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Bill Issued To'),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Bill Status'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      IconButton(
                        iconSize: 35,
                        padding: EdgeInsets.all(10),
                        icon: Icon(
                          Icons.picture_as_pdf,
                          color: Color(0xff09548c),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '25 Bhadra 2078',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Ram Shrestha',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), //Type of Payment
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        billStatus,
                        style: TextStyle(
                          color: billStatus == 'issued'
                              ? Colors.green
                              : Color(0xffF6821E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IssuedBills()));
                        },
                        child: Text(
                          "View All >",
                          style: TextStyle(color: Color(0xff09548C)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                child: Text(
                  "Recent Payments",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.black),
                )),
            //Recent Payment
            Container(
              margin: EdgeInsets.fromLTRB(0, 10.0, 0, 10),
              padding: EdgeInsets.all(10.0),
              color: Color(0xffF4F5F9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Rs. 9000.00',
                        style: TextStyle(
                          color: Color(0xff09548c),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        // ignore: prefer_adjacent_string_concatenation
                        'Monthly Rent: Bhadra',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Payment By'),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Payment Status'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      IconButton(
                        iconSize: 35,
                        padding: EdgeInsets.all(10),
                        icon: Icon(
                          Icons.picture_as_pdf,
                          color: Color(0xff09548c),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Ram Shrestha',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), //Type of Payment
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        paymentStatus,
                        style: TextStyle(
                          color: paymentStatus == 'Complete'
                              ? Colors.green
                              : Color(0xffF6821E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RecentPayment()));
                        },
                        child: Text(
                          "View All >",
                          style: TextStyle(color: Color(0xff09548C)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff09548C),
                ),
                icon: Icon(
                  Icons.receipt,
                  color: Colors.white,
                ),
                label: Text('Issue Monthly Bill'),
                onPressed: () {
                  print("Monthly bill Issued");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
