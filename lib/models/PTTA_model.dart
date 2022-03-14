import 'package:startup_app/models/activity_model.dart';

class PTTA {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  PTTA({
    required this.imageUrl,
    required this.venue,
    required this.address,
    required this.contact,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/ptta.jpg',
    name: 'Weekday before 7pm',
    type: 'Table Tennis',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 8,
  ),
  Activity(
    imageUrl: 'assets/images/ptta.jpg',
    name: 'Weekday after 7pm',
    type: 'Table Tennis',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 10,
  ),
  Activity(
    imageUrl: 'assets/images/ptta.jpg',
    name: 'Weekend before 7pm',
    type: 'Table Tennis',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 10,
  ),
  Activity(
    imageUrl: 'assets/images/ptta.jpg',
    name: 'Weekend after 7pm',
    type: 'Table Tennis',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 12,
  ),
];

List<PTTA> PTTAs = [
  PTTA(
    imageUrl: 'assets/images/ptta.png',
    venue: 'Penang Table Tennis',
    address:
        'No., 22, Gat Lebuh Macallum, Georgetown, 10300 George Town, Penang',
    contact: '+6043701722',
    description: 'Open for business from 2pm to 10pm',
    activities: activities,
  ),
];
