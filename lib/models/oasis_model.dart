import 'package:startup_app/models/activity_model.dart';

class OasisFutsal {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  OasisFutsal({
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
    imageUrl: 'assets/images/oasis_futsal.jpg',
    name: 'Weekday before 7pm',
    type: 'Futsal',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 80,
  ),
  Activity(
    imageUrl: 'assets/images/oasis_futsal.jpg',
    name: 'Weekday after 7pm',
    type: 'Futsal',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 90,
  ),
  Activity(
    imageUrl: 'assets/images/oasis_futsal.jpg',
    name: 'Weekend before 7pm',
    type: 'Futsal',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 90,
  ),
  Activity(
    imageUrl: 'assets/images/oasis_futsal.jpg',
    name: 'Weekend after 7pm',
    type: 'Futsal',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 100,
  ),
];

List<OasisFutsal> OasisFutsals = [
  OasisFutsal(
    imageUrl: 'assets/images/oasis.jpg',
    venue: 'Oasis Futsal',
    address: "The Oasis, Jalan Kaki Bukit, 11700 Gelugor, Pulau Pinang",
    contact: '+6017-414 2256',
    description:
        'Open for business at 2pm to 10pm from Monday to Thursday.\Open business at 4pm to 10pm on Friday.\Open business at 8am to 10pm on Saturday and Sunday.',
    activities: activities,
  ),
];
