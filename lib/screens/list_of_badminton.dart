import 'package:flutter/material.dart';
import 'package:startup_app/models/FRU_model.dart';
import 'package:startup_app/models/LTT_badminton_model.dart';
import 'package:startup_app/models/PBA_badminton_model.dart';
import 'package:startup_app/models/PCC_model.dart';
import 'package:startup_app/models/YMCA_model.dart';
import 'package:startup_app/models/badminton_list.dart';
import 'package:startup_app/models/permata_model.dart';
import 'package:startup_app/screens/FRU_screen.dart';
import 'package:startup_app/screens/LTT_screen.dart';
import 'package:startup_app/screens/PBA_screen.dart';
import 'package:startup_app/screens/PCC_screen.dart';
import 'package:startup_app/screens/permata_screen.dart';
import 'package:startup_app/screens/ymca_screen.dart';

class Badminton extends StatefulWidget {
  const Badminton({Key? key}) : super(key: key);

  @override
  _BadmintonState createState() => _BadmintonState();
}

class _BadmintonState extends State<Badminton> {
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
              "List of Badminton Courts",
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
              YMCA ymca = YMCAs[1];
              LTT ltt = LTTs[0];
              PBA pba = PBAs[0];
              Permata permata = Permatas[0];
              FRU fru = FRUs[0];
              PCC pcc = PCCs[0];
              BadmintonList badminton = BadmintonLists[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      if (badminton == BadmintonLists[1]) {
                        return LTTScreen(ltt: ltt);
                      } else if (badminton == BadmintonLists[2]) {
                        return PBAScreen(pba: pba);
                      } else if (badminton == BadmintonLists[3]) {
                        return PermataScreen(permata: permata);
                      } else if (badminton == BadmintonLists[4]) {
                        return FRUScreen(fru: fru);
                      } else if (badminton == BadmintonLists[4]) {
                        return PCCScreen(pcc: pcc);
                      } else {
                        return YMCABadminton(ymca: ymca);
                      }
                    },
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  height: 140.0,
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
                                width: 170.0,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          badminton.venue,
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
                                          badminton.contact,
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      badminton.address,
                                      style: TextStyle(
                                        fontSize: 10.0,
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
                                height: 140.0,
                                width: 130.0,
                                image: AssetImage(badminton.imageUrl),
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
            childCount: BadmintonLists.length,
          ),
        ),
      ],
    ));
  }
}
