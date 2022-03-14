import 'package:flutter/material.dart';
import 'package:startup_app/models/Oxygen_model.dart';
import 'package:startup_app/models/PWR_model.dart';
import 'package:startup_app/models/Peak_model.dart';
import 'package:startup_app/models/Ultimate_model.dart';
import 'package:startup_app/models/chi_model.dart';
import 'package:startup_app/models/gym_list.dart';
import 'package:startup_app/models/olympic_model.dart';
import 'package:startup_app/models/powerhouse_model.dart';
import 'package:startup_app/models/seven_star_model.dart';
import 'package:startup_app/screens/Chi_screen.dart';
import 'package:startup_app/screens/olympic_screen.dart';
import 'package:startup_app/screens/oxygen_screen.dart';
import 'package:startup_app/screens/peak_screen.dart';
import 'package:startup_app/screens/powerhouse_screen.dart';
import 'package:startup_app/screens/pwr_screen.dart';
import 'package:startup_app/screens/seven_star_screen.dart';
import 'package:startup_app/screens/ultimate_screen.dart';

class Gym extends StatefulWidget {
  const Gym({Key? key}) : super(key: key);

  @override
  _GymState createState() => _GymState();
}

class _GymState extends State<Gym> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: _pinned,
          snap: _snap,
          floating: _floating,
          expandedHeight: 0.0,
          flexibleSpace: const FlexibleSpaceBar(
            title: Text(
              "List of Gyms",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              Peak peak = Peaks[0];
              Chi chi = Chis[0];
              Oxygen oxygen = Oxygens[0];
              Olympic olympic = Olympics[0];
              Ultimate ultimate = Ultimates[0];
              Sevenstar sevenstar = Sevenstars[0];
              Powerhouse powerhouse = Powerhouses[0];
              PWR pwr = PWRs[3];
              GymList gym = GymLists[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      if (gym == GymLists[1]) {
                        return PeakScreen(peak: peak);
                      } else if (gym == GymLists[2]) {
                        return UltimateScreen(ultimate: ultimate);
                      } else if (gym == GymLists[3]) {
                        return OxygenScreen(oxygen: oxygen);
                      } else if (gym == GymLists[4]) {
                        return OlympicScreen(olympic: olympic);
                      } else if (gym == GymLists[5]) {
                        return PowerhouseScreen(powerhouse: powerhouse);
                      } else if (gym == GymLists[6]) {
                        return SevenStarScreen(sevenstar: sevenstar);
                      } else if (gym == GymLists[7]) {
                        return ChiScreen(chi: chi);
                      } else {
                        return PWRScreen(pwr: pwr);
                      }
                    },
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  height: 170.0,
                  width: 220.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                        height: 170.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 160.0,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          gym.venue,
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          gym.contact,
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      gym.address,
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Positioned(
                            left: 20.0,
                            top: 15.0,
                            bottom: 15.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height: 170.0,
                                width: 130.0,
                                image: AssetImage(gym.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: GymLists.length,
          ),
        ),
      ],
    ));
  }
}
