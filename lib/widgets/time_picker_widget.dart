import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:startup_app/widgets/button_widget.dart';

class TimePickerWidget extends StatefulWidget {
  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
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
        title: 'Start Time',
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

    final hour2 = newTime.hour.toString().padLeft(2, '0');
    final minute2 = newTime.minute.toString().padLeft(2, '0');

    database
        .child('starttime')
        .set({'starttime': '$hour2:$minute2'})
        .then((_) => print('Starttime has been written!'))
        .catchError((error) => print('You got an eror $error'));

    setState(() => time = newTime);
  }
}
