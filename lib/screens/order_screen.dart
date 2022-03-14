import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:startup_app/screens/payment_screen.dart';
import 'package:startup_app/widgets/date_picker_widget.dart';
import 'package:startup_app/widgets/date_range_picker_widget.dart';
import 'package:startup_app/widgets/end_time_picker_widget.dart';
import 'package:startup_app/widgets/time_picker_widget.dart';

class OrderScreen extends StatefulWidget {
  final String title;
  final String venue;
  const OrderScreen({Key? key, required this.title, required this.venue})
      : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int index = 0;
  String get title => title;
  String get venue => venue;
  final database = FirebaseDatabase.instance.reference();
  TimePickerWidget starttime = new TimePickerWidget();
  EndTime endtime = new EndTime();
  TextEditingController name = new TextEditingController();
  String _displaystarttime = "Starttime";
  String _displayendtime = "Endtime";
  String _displaydatetime = "Datetime";
  late StreamSubscription _dailySpecialStream;
  late StreamSubscription _dailySpecialStream1;
  late StreamSubscription _dailySpecialStream2;
  @override
  void initState() {
    super.initState();
    _activateListeners();
  }

  void _activateListeners() {
    _dailySpecialStream =
        database.child("starttime/starttime").onValue.listen((event) {
      final String starttime = event.snapshot.value;
      setState(() {
        _displaystarttime = '${starttime}';
      });
    });
    _dailySpecialStream1 =
        database.child("endtime/endtime").onValue.listen((event) {
      final String endtime = event.snapshot.value;
      setState(() {
        _displayendtime = '${endtime}';
      });
    });
    _dailySpecialStream2 = database.child("date/date").onValue.listen((event) {
      final String datetime = event.snapshot.value;
      setState(() {
        _displaydatetime = '${datetime}';
      });
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: buildBottomBar(),
        body: buildBottomBar(),
      );

  Widget buildBottomBar() {
    final style = TextStyle(color: Colors.white);

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: BackButton(color: Colors.white),
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Text(widget.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        toolbarHeight: 100.0,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                        controller: name,
                        obscureText: false,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: const InputDecoration(
                          fillColor: Colors.lightBlue,
                          filled: true,
                        )),
                  ],
                ),
                const SizedBox(height: 24),
                DatePickerWidget(),
                const SizedBox(height: 24),
                TimePickerWidget(),
                const SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   "Hours",
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 24,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // const SizedBox(height: 8),
                    // TextField(
                    //     style: TextStyle(
                    //       fontSize: 20,
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //     decoration: const InputDecoration(
                    //       fillColor: Colors.white,
                    //       filled: true,
                    //     )),
                    EndTime(),
                  ],
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(30),
                    primary: Colors.blue[900],
                  ),
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) {
                  //       return OrderScreen(title: "Kinta Futsal Booking");
                  //     },
                  //   ),
                  onPressed: () {
                    database
                        .child('names')
                        .set({'name': '${name.text}'})
                        .then((_) => print('Drink has been written!'))
                        .catchError((error) => print('You got an eror $error'));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Payment(
                                  name: "${name.text}",
                                  title: widget.venue,
                                  starttime: "${_displaystarttime}",
                                  endtime: "${_displayendtime}",
                                  hour: int.parse(
                                          _displayendtime.substring(0, 2)) -
                                      int.parse(
                                          _displaystarttime.substring(0, 2)),
                                  datetime: '${_displaydatetime}',
                                )));
                  },
                  child: FittedBox(
                    child: Text(
                      "Proceed Payment",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void deactivate() {
    _dailySpecialStream.cancel();
    _dailySpecialStream1.cancel();
    _dailySpecialStream2.cancel();
    super.deactivate();
  }
}
  // String get title => title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//             child: Column(children: [
//       SizedBox(height: 20.0),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text(
//           widget.title,
//           style: TextStyle(
//             fontSize: 30.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       SizedBox(height: 20.0),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Text("Name:"),
//           Container(
//             width: 200,
//             child: Column(
//               children: [
                // TextFormField(
                //   decoration: const InputDecoration(
                //       border: UnderlineInputBorder(),
                //       labelText: 'Enter your Name'),
                // ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       SizedBox(height: 20.0),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Text("Date:"),
//           SizedBox(width: 20.0),
//           Container(child: SfDateRangePicker()),
//         ],
//       ),
//     ])));
//   }
// }

