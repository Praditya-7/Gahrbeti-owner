// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import '../../tenant_detail.dart';

class Tenants extends StatefulWidget {
  const Tenants({Key? key}) : super(key: key);

  @override
  State<Tenants> createState() => _TenantsState();
}

class _TenantsState extends State<Tenants> {
  int tenantCount = 0;
  List<String> entries = <String>[
    '1',
    '2',
    '3',
  ];
  String tenantName = 'Ram Shrestha';
  String listingType = 'Flat';
  List<int> dueRemaining = [
    15000,
    0,
    1600,
  ];
  @override
  Widget build(BuildContext context) {
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
                  child: SafeArea(
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: entries.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          Divider(
                        height: 0.1,
                        indent: 0,
                        thickness: 0.1,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TenantDetail()));
                          },
                          child: Container(
                            margin: EdgeInsets.all(12),
                            height: 150,
                            color: Colors.white,
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Color(0xff09548c),
                                      size: 100,
                                    ),
                                    Text(tenantName),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      listingType + ' No ' + entries[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Dues: ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          //ERROR HERE IN DUE VALUE
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: (entries[index] == '0')
                                                ? Color(0xff30d472)
                                                : Colors.orange,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                '1500',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(Icons.more_vert),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Color(0xff09548C),
          onPressed: () {
            setState(() {
              tenantCount++;
              print(tenantCount);
            });
          }),
    );
  }
}
