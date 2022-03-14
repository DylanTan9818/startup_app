import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:startup_app/widgets/button_widget.dart';

class EndTime extends StatefulWidget {
  @override
  _EndTimeState createState() => _EndTimeState();

  String Hour(String hour) {
    return hour;
  }
}

class _EndTimeState extends State<EndTime> {
  TimeOfDay? time;
  final database = FirebaseDatabase.instance.reference();

  String getText() {
    if (time == null) {
      return 'Select Time';
    } else {
      final hours = time!.hour.toString().padLeft(2, '0');
      final minutes = time!.minute.toString().padLeft(2, '0');
      return '$hours:$minutes';
    }
  }

  @override
  Widget build(BuildContext context) => ButtonHeaderWidget(
        title: 'End Time',
        text: getText(),
        onClicked: () => pickTime(context),
      );

  Future pickTime(BuildContext context) async {
    final initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: time ?? initialTime,
    );

    if (newTime == null) return;

    final hour1 = newTime.hour.toString().padLeft(2, '0');
    final minute1 = newTime.minute.toString().padLeft(2, '0');
    database
        .child('endtime')
        .set({'endtime': '$hour1:$minute1'})
        .then((_) => print('Endtime has been written!'))
        .catchError((error) => print('You got an eror $error'));

    setState(() => time = newTime);
  }
}
