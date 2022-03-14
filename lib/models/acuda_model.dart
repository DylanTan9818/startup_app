import 'package:startup_app/models/activity_model.dart';

class Acuda {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  Acuda({
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
    imageUrl: 'assets/images/Acudatt.jpg',
    name: 'Weekday before 7pm',
    type: 'Table Tennis',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 80,
  ),
  Activity(
    imageUrl: 'assets/images/Acudatt.jpg',
    name: 'Weekday after 7pm',
    type: 'Table Tennis',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 90,
  ),
  Activity(
    imageUrl: 'assets/images/Acudatt.jpg',
    name: 'Weekend before 7pm',
    type: 'Table Tennis',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 90,
  ),
  Activity(
    imageUrl: 'assets/images/Acudatt.jpg',
    name: 'Weekend after 7pm',
    type: 'Table Tennis',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 100,
  ),
];

List<Acuda> Acudas = [
  Acuda(
    imageUrl: 'assets/images/Acuda_table_tennis.jpg',
    venue: 'Acuda Table Tennis',
    address: ' 381A-1-1, Jln Perak, Jelutong, 11600 George Town, Penang',
    contact: '+6012-564 9255',
    description: 'Open for business from 12pm to 9.30pm',
    activities: activities,
  ),
];
