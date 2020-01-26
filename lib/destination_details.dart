import 'package:flutte_travel_ui/models/destination.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationDetails extends StatefulWidget {
  final Destination dest;

  DestinationDetails(this.dest);

  @override
  _DestinationDetailsState createState() => _DestinationDetailsState();
}

class _DestinationDetailsState extends State<DestinationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0)),
                  child: Image(
                      height: 350.0,
                      fit: BoxFit.cover,
                      image: AssetImage(widget.dest.imageUrl))),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back,
                        size: 30.0,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          size: 30.0,
                        ),
                        Icon(
                          Icons.sort,
                          size: 30.0,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
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
                          fontSize: 36.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 16.0,
                          color: Theme.of(context).accentColor,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          "Viena",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  color: Theme.of(context).accentColor,
                  size: 25.0,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: widget.dest.activities.length,
                itemBuilder: (BuildContext context,int index) {
                  return Text("");
                }),
          )
        ],
      ),
    );
  }
}
