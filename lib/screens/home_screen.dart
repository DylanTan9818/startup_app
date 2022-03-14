import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:startup_app/screens/list_of_badminton.dart';
import 'package:startup_app/screens/list_of_futsal_venues..dart';
import 'package:startup_app/screens/list_of_gym.dart';
import 'package:startup_app/screens/list_of_table_tennis.dart';
import 'package:startup_app/screens/trainer_screen.dart';
import 'package:startup_app/widgets/sports_venue.dart';

import '../my_flutter_app_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.futbol,
    FontAwesomeIcons.tableTennis,
    MyFlutterApp.badminton_svgrepo_com,
    FontAwesomeIcons.dumbbell,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          Navigator.push(context, MaterialPageRoute(
            builder: (_) {
              if (_icons[_selectedIndex] == _icons[0]) {
                return ListOfFutsalVenues();
              } else if (_icons[_selectedIndex] == _icons[1]) {
                return TableTennisList();
              } else if (_icons[_selectedIndex] == _icons[2]) {
                return Badminton();
              } else {
                return Gym();
              }
            },
          ));
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(_icons[index],
            size: 25.0, color: Theme.of(context).primaryColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Welcome to EvoSports Venue',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(height: 40.0),
            SportsVenue(),
            // DestinationCarousel(),
            SizedBox(height: 40.0),
            // HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value)
            // {
            //   setState(() {
            //     _currentTab = value;
            //   });
            {
          setState(() {
            _currentTab = value;
          });
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                if (value == 0) {
                  return HomeScreen();
                } else if (value == 1) {
                  return TrainerScreen();
                } else if (value == 2) {
                  return HomeScreen();
                } else {
                  return HomeScreen();
                }
              },
            ),
          );
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30.0,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sports,
                size: 30.0,
              ),
              label: "Booking"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage(
                    'https://lh3.google.com/u/0/ogw/ADea4I4w2MINedEecNu4L3u11LCKRrtOPXuMq3zbxlaj=s83-c-mo'),
              ),
              label: "Favorite")
        ],
      ),
    );
  }
}
