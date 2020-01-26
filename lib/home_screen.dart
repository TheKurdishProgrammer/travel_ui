

import 'package:flutte_travel_ui/widgets/destinations_carousel.dart';
import 'package:flutte_travel_ui/widgets/hotels_carousel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIconIndex = 0;
  var _currentTabIndex = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 30.0,
          ),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                "What Would You Like To Find?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry entry) => _buildTopBarIcons(entry.key))
                  .toList(),
            ),
            SizedBox(height: 20.0),
            DestinationsCarousel(),
            SizedBox(height: 20.0),
            HotelsCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          // elevation: 20.0,

          shape: CircularNotchedRectangle(),
          child: Container(
            height: 75,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  iconSize: 30.0,
                  padding: EdgeInsets.only(left: 28.0),
                  icon: Icon(Icons.home),
                  onPressed: () {
                    setState(() {
                      _currentTabIndex = 0;
                    });
                  },
                ),
                IconButton(
                  iconSize: 30.0,
                  padding: EdgeInsets.only(right: 28.0),
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      _currentTabIndex = 1;
                      print("${_currentTabIndex}");
                    });
                  },
                ),
                IconButton(
                  iconSize: 30.0,
                  padding: EdgeInsets.only(left: 28.0),
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    setState(() {
                      _currentTabIndex = 2;
                      print("${_currentTabIndex}");
                    });
                  },
                ),
                IconButton(
                  iconSize: 30.0,
                  padding: EdgeInsets.only(right: 28.0),
                  icon: Icon(Icons.list),
                  onPressed: () {
                    setState(() {
                      _currentTabIndex = 3;
                      print("${_currentTabIndex}");
                    });
                  },
                )
              ],
            ),
          )),
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            // elevation: 5.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildTopBarIcons(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIconIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: index == selectedIconIndex
              ? Theme.of(context).accentColor
              : Colors.grey,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Icon(
          _icons[index],
          color: index == selectedIconIndex
              ? Theme.of(context).primaryColor
              : Colors.blueGrey,
          size: 25.0,
        ),
      ),
    );
  }
}
