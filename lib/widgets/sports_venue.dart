import 'package:flutter/material.dart';
import 'package:startup_app/models/GSS_model.dart';
import 'package:startup_app/models/Gembira_model.dart';
import 'package:startup_app/models/KintaFutsal_model.dart';
import 'package:startup_app/models/PWR_model.dart';
import 'package:startup_app/models/YMCA_model.dart';
import 'package:startup_app/screens/gembira_screen.dart';
import 'package:startup_app/screens/gss_screen.dart';
import 'package:startup_app/screens/kinta_screen.dart';
import 'package:startup_app/screens/pwr_screen.dart';
import 'package:startup_app/screens/ymca_screen.dart';

class SportsVenue extends StatelessWidget {
  const SportsVenue({Key? key}) : super(key: key);

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
                'Sports Venues Near You',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: KintaFutsals.length,
            itemBuilder: (BuildContext context, int index) {
              KintaFutsal kinta = KintaFutsals[index];
              YMCA ymca = YMCAs[index];
              GembiraFutsal gembira = GembiraFutsals[index];
              GSS gss = GSSs[index];
              PWR pwr = PWRs[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      if (kinta == KintaFutsals[1]) {
                        return YMCABadminton(
                          ymca: ymca,
                        );
                      } else if (kinta == KintaFutsals[2]) {
                        return GSSScreen(
                          gss: gss,
                        );
                      } else if (kinta == KintaFutsals[3]) {
                        return PWRScreen(
                          pwr: pwr,
                        );
                      } else if (kinta == KintaFutsals[4]) {
                        return GembiraScreen(
                          gembira: gembira,
                        );
                      } else {
                        return KintaScreen(
                          kinta: kinta,
                        );
                      }
                    },
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 220.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 15.0,
                        child: Container(
                          height: 160.0,
                          width: 220.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  kinta.venue,
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  kinta.contact,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Text(
                                  kinta.address,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: kinta.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image(
                                  height: 140.0,
                                  width: 220.0,
                                  image: AssetImage(kinta.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                              bottom: 10.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // Text(
                                  //   kinta.venue,
                                  //   style: TextStyle(
                                  //     color: Colors.white,
                                  //     fontSize: 24.0,
                                  //     fontWeight: FontWeight.w600,
                                  //     letterSpacing: 1.2,
                                  //   ),
                                  // ),
                                  Row(
                                    children: <Widget>[
                                      // Icon(
                                      //   FontAwesomeIcons.locationArrow,
                                      //   size: 10.0,
                                      //   color: Colors.white,
                                      // ),
                                      SizedBox(width: 5.0),
                                      // Text(
                                      //   kinta.address,
                                      //   style: TextStyle(
                                      //     color: Colors.white,
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
