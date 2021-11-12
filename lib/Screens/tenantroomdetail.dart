// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ListingDetail extends StatefulWidget {
  const ListingDetail({Key? key}) : super(key: key);

  @override
  _ListingDetailState createState() => _ListingDetailState();
}

class _ListingDetailState extends State<ListingDetail> {
  int price = 9000;
  String address = "Shakti Bhakti Marga, Gongabu, Kathmandu";
  String floor = "First";
  String name = "Ram Shrestha";
  String preference = "Family";
  int bathroomNo = 1;
  String intOption = "Available";
  String parkingOption = "Available";
  String addDescription = "This Is additional Description";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xff09548c),
        title: Text("Listing Details"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                child: Image(
                    image: NetworkImage(
                        "https://media.gettyimages.com/photos/fresh-and-modern-white-style-living-room-interior-picture-id598928736?s=612x612")),
              ),
              SizedBox(height: 5.0),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xff09548c),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              address,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              softWrap: false,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Container()
                      ],
                    ),
                    Text(
                      'Rs.' + price.toString() + '/month',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.0),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //OwnerName
                    Column(
                      children: [
                        Text("Owner",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(name),
                      ],
                    ),
                    //Preferences
                    Column(
                      children: [
                        Text("Preferneces",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(preference),
                      ],
                    ),
                    //Floor
                    Column(
                      children: [
                        Text("Floor",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(floor),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              //Basic Amenities
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Basic Amenities",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black)),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //bathRooms No
                    RichText(
                      text: TextSpan(
                        text: "BathRooms : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black),
                        children: [
                          TextSpan(
                              text: " " + bathroomNo.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.0,
                                  color: Color(0xff494949)))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    //Kitchen
                    RichText(
                      text: TextSpan(
                        text: "Kitchen : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black),
                        children: [
                          TextSpan(
                              text: " " + bathroomNo.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.0,
                                  color: Color(0xff494949)))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    // Internet
                    RichText(
                      text: TextSpan(
                        text: "Internet : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black),
                        children: [
                          TextSpan(
                              text: " " + intOption,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.0,
                                  color: Color(0xff494949)))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    //parking
                    RichText(
                      text: TextSpan(
                        text: "Parking : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black),
                        children: [
                          TextSpan(
                              text: " " + parkingOption,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.0,
                                  color: Color(0xff494949)))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                  ],
                ),
              ),
              //Basic Amenities
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Additional Description",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black)),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                child: Text(addDescription),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Image(
                    image: NetworkImage(
                        "https://lh3.googleusercontent.com/proxy/VP6IKCJYjeabQ4p-SejSJtT53YgzUjXouhfh_h2nvIkGgbHH2zz9qHzhmJSpSmRDQG-TNplvPwkwoi88HhK7LxYSO4Ktk8lm7GzDmtDaWLTvPJt_NoZhRLTQd6ciQJVuobQN3FT_PQ")),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 20.0,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff09548C),
            ),
            icon: Icon(
              Icons.call,
              color: Colors.white,
            ),
            label: Text('Call Now'),
            onPressed: () {
              //CALL FUNCTION
            },
          ),
          SizedBox(
            width: 10.0,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff09548C),
            ),
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            label: Text('Message'),
            onPressed: () {
              //MESSAGE FUNCTION HERE
            },
          ),
        ],
      ),
    );
  }
}
