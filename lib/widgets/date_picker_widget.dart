import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:startup_app/widgets/button_widget.dart';

class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime? date;
  final database = FirebaseDatabase.instance.reference();

  String getText() {
    if (date == null) {
      return 'Select Date';
    } else {
      String newdate = DateFormat('MM/dd/yyyy').format(date!);
      return newdate;
      // return '${date.month}/${date.day}/${date.year}';
    }
  }

  @override
  Widget build(BuildContext context) => ButtonHeaderWidget(
        title: 'Date',
        text: getText(),
        onClicked: () => pickDate(context),
      );

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: date ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return;

    String newdates = DateFormat('MM/dd/yyyy').format(newDate);
    database
        .child('date')
        .set({'date': '$newdates'})
        .then((_) => print('Date has been written!'))
        .catchError((error) => print('You got an error $error'));

    setState(() => date = newDate);
  }
}
