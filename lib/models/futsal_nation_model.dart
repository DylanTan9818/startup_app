import 'package:startup_app/models/activity_model.dart';

class FutsalNation {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  FutsalNation({
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
    imageUrl: 'assets/images/futsal_nation_book.jpg',
    name: 'Weekday before 7pm',
    type: 'Futsal',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 80,
  ),
  Activity(
    imageUrl: 'assets/images/futsal_nation_book.jpg',
    name: 'Weekday after 7pm',
    type: 'Futsal',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 90,
  ),
  Activity(
    imageUrl: 'assets/images/futsal_nation_book.jpg',
    name: 'Weekend before 7pm',
    type: 'Futsal',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 90,
  ),
  Activity(
    imageUrl: 'assets/images/futsal_nation_book.jpg',
    name: 'Weekend after 7pm',
    type: 'Futsal',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 100,
  ),
];

List<FutsalNation> FutsalNations = [
  FutsalNation(
    imageUrl: 'assets/images/futsal_nation.jpg',
    venue: 'Futsal Nation',
    address:
        "D' Piazza Mall, Jalan Mahsuri, Bandar Bayan Baru, 11950 Bayan Lepas, Penang",
    contact: '+6019-429 4433',
    description:
        'Open for business at 2pm to 10pm from Monday to Thursday.\Open business at 4pm to 10pm on Friday.\Open business at 8am to 10pm on Saturday and Sunday.',
    activities: activities,
  ),
];
