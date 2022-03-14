import 'package:flutter/material.dart';
import 'package:startup_app/models/GSS_model.dart';
import 'package:startup_app/models/PTTA_model.dart';
import 'package:startup_app/models/acuda_model.dart';
import 'package:startup_app/models/elite_model.dart';
import 'package:startup_app/models/list_of_tabletennis.dart';
import 'package:startup_app/screens/acuda_screen.dart';
import 'package:startup_app/screens/elite_screen.dart';
import 'package:startup_app/screens/gss_screen.dart';
import 'package:startup_app/screens/ptta_screen.dart';

class TableTennisList extends StatefulWidget {
  const TableTennisList({Key? key}) : super(key: key);

  @override
  _TableTennisListState createState() => _TableTennisListState();
}

class _TableTennisListState extends State<TableTennisList> {
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
              "List of Table Tennis",
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
              GSS gss = GSSs[2];
              PTTA ptta = PTTAs[0];
              Elite elite = Elites[0];
              Acuda acuda = Acudas[0];

              TableTennisLists table = TableTennisListss[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    if (table == TableTennisListss[0]) {
                      return PTTAScreen(ptta: ptta);
                    } else if (table == TableTennisListss[2]) {
                      return EliteScreen(elite: elite);
                    } else if (table == TableTennisListss[3]) {
                      return AcudaScreen(acuda: acuda);
                    } else {
                      return GSSScreen(gss: gss);
                    }
                  }),
                ),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  height: 160.0,
                  width: 240.0,
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
                                        Container(
                                          width: 160.0,
                                          child: Text(
                                            table.venue,
                                            style: TextStyle(
                                              fontSize: 19.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          table.contact,
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      table.address,
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
                                height: 160.0,
                                width: 130.0,
                                image: AssetImage(table.imageUrl),
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
            childCount: TableTennisListss.length,
          ),
        ),
      ],
    ));
  }
}
