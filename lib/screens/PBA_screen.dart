import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:startup_app/models/PBA_badminton_model.dart';
import 'package:startup_app/models/activity_model.dart';
import 'package:startup_app/screens/order_screen.dart';

class PBAScreen extends StatefulWidget {
  final PBA pba;
  const PBAScreen({Key? key, required this.pba}) : super(key: key);

  @override
  _PBAScreenState createState() => _PBAScreenState();
}

class _PBAScreenState extends State<PBAScreen> {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

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
            expandedHeight: 160.0,
            flexibleSpace: const FlexibleSpaceBar(
                title: Text(
                  "PBA Badminton",
                  style: TextStyle(color: Colors.white),
                ),
                background: Image(
                  image: AssetImage(
                      'assets/images/penang_buddhist_association.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                Activity activity = widget.pba.activities[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return OrderScreen(
                            title: "PBA Badminton Booking",
                            venue: "PBA Badminton");
                      },
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                        height: 170.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 100.0,
                                    child: Text(
                                      activity.name,
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        '\RM${activity.price}',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'per hour',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                activity.type,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              _buildRatingStars(activity.rating),
                              SizedBox(height: 10.0),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      activity.startTimes[0],
                                    ),
                                  ),
                                  SizedBox(width: 10.0),
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      activity.startTimes[1],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        top: 15.0,
                        bottom: 15.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            width: 110.0,
                            image: AssetImage(
                              activity.imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              childCount: widget.pba.activities.length,
            ),
          ),
        ],
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Stack(
//             children: <Widget>[
//               Container(
//                 height: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30.0),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black26,
//                       offset: Offset(0.0, 2.0),
//                       blurRadius: 6.0,
//                     ),
//                   ],
//                 ),
//                 child: Hero(
//                   tag: widget.pba.imageUrl,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(30.0),
//                     child: Image(
//                       image: AssetImage(widget.pba.imageUrl),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     IconButton(
//                       icon: Icon(Icons.arrow_back),
//                       iconSize: 30.0,
//                       color: Colors.black,
//                       onPressed: () => Navigator.pop(context),
//                     ),
//                     Row(
//                       children: <Widget>[
//                         IconButton(
//                           icon: Icon(Icons.search),
//                           iconSize: 30.0,
//                           color: Colors.black,
//                           onPressed: () => Navigator.pop(context),
//                         ),
//                         IconButton(
//                           icon: Icon(FontAwesomeIcons.sortAmountDown),
//                           iconSize: 25.0,
//                           color: Colors.black,
//                           onPressed: () => Navigator.pop(context),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 left: 20.0,
//                 bottom: 20.0,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     // Text(
//                     //   widget.pba.venue,
//                     //   style: TextStyle(
//                     //     color: Colors.white,
//                     //     fontSize: 35.0,
//                     //     fontWeight: FontWeight.w600,
//                     //     letterSpacing: 1.2,
//                     //   ),
//                     // ),
//                     Row(
//                       children: <Widget>[
//                         // Icon(
//                         //   FontAwesomeIcons.locationArrow,
//                         //   size: 15.0,
//                         //   color: Colors.white70,
//                         // ),
//                         SizedBox(width: 5.0),
//                         // Text(
//                         //   widget.pba.address,
//                         //   style: TextStyle(
//                         //     color: Colors.white70,
//                         //     fontSize: 20.0,
//                         //   ),
//                         // ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 right: 20.0,
//                 bottom: 20.0,
//                 child: Icon(
//                   Icons.location_on,
//                   color: Colors.white70,
//                   size: 25.0,
//                 ),
//               ),
//             ],
//           ),
//           Expanded(
//             child: ListView.builder(
//               padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
//               itemCount: widget.pba.activities.length,
//               itemBuilder: (BuildContext context, int index) {
//                 Activity activity = widget.pba.activities[index];
//                 return GestureDetector(
//                     onTap: () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (_) {
//                               return OrderScreen(
//                                 title: "PBA Badminton Booking",
//                                 venue: 'PBA Badminton',
//                               );
//                             },
//                           ),
//                         ),
//                     child: Stack(
//                       children: <Widget>[
//                         Container(
//                           margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
//                           height: 170.0,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(20.0),
//                           ),
//                           child: Padding(
//                             padding:
//                                 EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Container(
//                                       width: 100.0,
//                                       child: Text(
//                                         activity.name,
//                                         style: TextStyle(
//                                           fontSize: 18.0,
//                                           fontWeight: FontWeight.w600,
//                                         ),
//                                         overflow: TextOverflow.ellipsis,
//                                         maxLines: 2,
//                                       ),
//                                     ),
//                                     Column(
//                                       children: <Widget>[
//                                         Text(
//                                           '\RM${activity.price}',
//                                           style: TextStyle(
//                                             fontSize: 20.0,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                         Text(
//                                           'per hour',
//                                           style: TextStyle(
//                                             color: Colors.grey,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 Text(
//                                   activity.type,
//                                   style: TextStyle(
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                                 _buildRatingStars(activity.rating),
//                                 SizedBox(height: 10.0),
//                                 Row(
//                                   children: <Widget>[
//                                     Container(
//                                       padding: EdgeInsets.all(5.0),
//                                       width: 70.0,
//                                       decoration: BoxDecoration(
//                                         color: Theme.of(context).accentColor,
//                                         borderRadius:
//                                             BorderRadius.circular(10.0),
//                                       ),
//                                       alignment: Alignment.center,
//                                       child: Text(
//                                         activity.startTimes[0],
//                                       ),
//                                     ),
//                                     SizedBox(width: 10.0),
//                                     Container(
//                                       padding: EdgeInsets.all(5.0),
//                                       width: 70.0,
//                                       decoration: BoxDecoration(
//                                         color: Theme.of(context).accentColor,
//                                         borderRadius:
//                                             BorderRadius.circular(10.0),
//                                       ),
//                                       alignment: Alignment.center,
//                                       child: Text(
//                                         activity.startTimes[1],
//                                       ),
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 20.0,
//                           top: 15.0,
//                           bottom: 15.0,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(20.0),
//                             child: Image(
//                               width: 110.0,
//                               image: AssetImage(
//                                 activity.imageUrl,
//                               ),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ));
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
