import 'package:flutte_travel_ui/models/hotel.dart';
import 'package:flutter/material.dart';

class HotelsCarousel extends StatelessWidget {
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
                "Exclusive Hotels",
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
              itemCount: hotels.length,
              itemBuilder: (context, index) {
                var hotel = hotels[index];
                return Container(
                  margin: EdgeInsets.all(8.0),
                  width: 240.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 0.0,
                        child: Container(
                          height: 100.0,
                          width: 240.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0)),
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    hotel.name,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20.0),
                                  ),
                                  Text(
                                    hotel.address,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text("\$${hotel.price} /Night",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                        ),
                      ),
                      Container(
                         decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              blurRadius: 6.0,
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0))
                        ], borderRadius: BorderRadius.circular(20.0)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 180.0,
                            width: 220,
                            fit: BoxFit.cover,
                            image:AssetImage(hotel.imageUrl),

                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
