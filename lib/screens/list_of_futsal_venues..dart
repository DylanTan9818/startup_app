import 'package:flutter/material.dart';
import 'package:startup_app/models/Gembira_model.dart';
import 'package:startup_app/models/KintaFutsal_model.dart';
import 'package:startup_app/models/futsal_arena_model.dart';
import 'package:startup_app/models/futsal_nation_model.dart';
import 'package:startup_app/models/list_of_futsal_model.dart';
import 'package:startup_app/models/oasis_model.dart';
import 'package:startup_app/models/soccer_experience_model.dart';
import 'package:startup_app/screens/futsal_arena_screen.dart';
import 'package:startup_app/screens/futsal_nation_screen.dart';
import 'package:startup_app/screens/gembira_screen.dart';
import 'package:startup_app/screens/kinta_screen.dart';
import 'package:startup_app/screens/oasis_screen.dart';
import 'package:startup_app/screens/soccer_experience_screen.dart';

class ListOfFutsalVenues extends StatefulWidget {
  const ListOfFutsalVenues({Key? key}) : super(key: key);

  @override
  _ListOfFutsalVenuesState createState() => _ListOfFutsalVenuesState();
}

class _ListOfFutsalVenuesState extends State<ListOfFutsalVenues> {
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
              "List of Futsal Courts",
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
              KintaFutsal kinta = KintaFutsals[0];
              GembiraFutsal gembira = GembiraFutsals[4];
              FutsalArena futsalarena = FutsalArenas[0];
              FutsalList futsal = FutsalLists[index];
              FutsalNation futsalNation = FutsalNations[0];
              OasisFutsal oasis = OasisFutsals[0];
              SoccerExperience experience = SoccerExperiences[0];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      if (futsal == FutsalLists[1]) {
                        return GembiraScreen(gembira: gembira);
                      } else if (futsal == FutsalLists[2]) {
                        return FutsalArenaScreen(futsalarena: futsalarena);
                      } else if (futsal == FutsalLists[3]) {
                        return FutsalNationScreen(futsalNation: futsalNation);
                      } else if (futsal == FutsalLists[4]) {
                        return OasisScreen(oasis: oasis);
                      } else if (futsal == FutsalLists[5]) {
                        return SoccerExperienceScreen(experience: experience);
                      } else {
                        return KintaScreen(kinta: kinta);
                      }
                    },
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  height: 160.0,
                  width: 230.0,
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
                                width: 170.0,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          futsal.venue,
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          futsal.contact,
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      futsal.address,
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
                                height: 160.0,
                                width: 130.0,
                                image: AssetImage(futsal.imageUrl),
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
            childCount: FutsalLists.length,
          ),
        ),
      ],
    ));
  }
}
