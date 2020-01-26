import 'package:flutte_travel_ui/models/destination.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../destination_details.dart';

class DestinationsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Top Destinations",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    fontSize: 22.0),
              ),
              GestureDetector(
                onTap: () => debugPrint("Seeing all the destinations"),
                child: Text(
                  "See All",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                      fontSize: 16.0),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 260.0,
//          color: Colors.blue,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (context, index) {
                var dest = destinations[index];
                return GestureDetector(
                  onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> DestinationDetails(dest)) ),
                  child: Container(
                     margin: EdgeInsets.all(8.0),
                    width: 200.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          bottom: 10.0,
                          child: Container(

                            height: 100.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                 borderRadius: BorderRadius.circular(16.0)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                Text("Hello There",textAlign: TextAlign.left,style: TextStyle(
                                    fontWeight:FontWeight.w700,fontSize: 24.0),),
                                Text("Hello There sofei egijne egenjgj",textAlign: TextAlign.left,style: TextStyle(color: Colors.grey)),
                              ]),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10.0,
                          child: Container(
                            height: 160.0,
                            width: 180.0,
                            decoration: BoxDecoration(

                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 6.0,
                                      color: Colors.black26,
                                      offset: Offset(0.0, 2.0))
                                ],

                                borderRadius: BorderRadius.circular(20.0)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Stack(
                                children: <Widget>[
                                  Image.asset(
                                    dest.imageUrl,
                                    height: 160.0,
                                    width: 180.0,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Italy",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              letterSpacing: 2.0,
                                              color: Colors.white,
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.locationArrow,
                                              size: 12.0,
                                              color: Theme.of(context).accentColor,
                                            ),
                                            SizedBox(width: 8.0),
                                            Text(
                                              "Viena",
                                              style:
                                                  TextStyle(color: Colors.white70,fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
