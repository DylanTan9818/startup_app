import 'package:flutter/cupertino.dart';

class StartTime with ChangeNotifier {
  late DateTime? hours;

  DateTime? get hour {
    return hours;
  }
}
