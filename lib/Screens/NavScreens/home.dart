// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:gharbetiowner/Screens/owner/billing/recent_payments.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String state = "Vacant";
  int roomCount = 2, vacantCount = 5, occupiedCount = 1;
  String paymentStatus = 'Complete';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffEBEFF4),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                  padding: EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Room Info",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 140,
                            height: 135,
                            margin: EdgeInsets.all(50.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffC4D7E4)),
                            child: Center(
                              child: Text(
                                "$roomCount\nTotal",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  //Vacant room
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    width: 25.0,
                                    height: 36.0,
                                    color: Color(0xff30D472),
                                    child: Text(
                                      "$vacantCount",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    state = "Vacant",
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25.0),
                              Row(
                                children: [
                                  //Occupied Indicator
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    width: 25.0,
                                    height: 36.0,
                                    color: Color(0xffF6821E),
                                    child: Text(
                                      "$occupiedCount",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    state = "Occupied",
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Recent Payment",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10.0, 0, 10),
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
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
                                  height: 10,
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
                                        : Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RecentPayment()),
                              );
                            },
                            child: Text(
                              "View All>",
                              style: TextStyle(
                                  fontSize: 16.0, color: Color(0xff09548C)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
