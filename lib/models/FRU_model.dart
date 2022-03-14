import 'activity_model.dart';

class FRU {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  FRU({
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
    imageUrl: 'assets/images/FRU_badminton.jpg',
    name: 'Weekday before 7pm',
    type: 'Badminton',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 8,
  ),
  Activity(
    imageUrl: 'assets/images/FRU_badminton.jpg',
    name: 'Weekday after 7pm',
    type: 'Badminton',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 10,
  ),
  Activity(
    imageUrl: 'assets/images/FRU_badminton.jpg',
    name: 'Weekend before 7pm',
    type: 'Badminton',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 10,
  ),
  Activity(
    imageUrl: 'assets/images/FRU_badminton.jpg',
    name: 'Weekend after 7pm',
    type: 'Badminton',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 12,
  ),
];

List<FRU> FRUs = [
  FRU(
    imageUrl: 'assets/images/FRU.jpg',
    venue: 'FRU Badminton',
    address:
        '211, Jalan Macalister, George Town, 10400 George Town, Pulau Pinang',
    contact: '+604-228 8211',
    description: 'Open for business from 8am to 10.00pm',
    activities: activities,
  ),
];
