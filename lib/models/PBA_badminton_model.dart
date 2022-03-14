import 'activity_model.dart';

class PBA {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  PBA({
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
    imageUrl: 'assets/images/PBA_badminton.jpg',
    name: 'Weekday before 7pm',
    type: 'Badminton',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 8,
  ),
  Activity(
    imageUrl: 'assets/images/PBA_badminton.jpg',
    name: 'Weekday after 7pm',
    type: 'Badminton',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 10,
  ),
  Activity(
    imageUrl: 'assets/images/PBA_badminton.jpg',
    name: 'Weekend before 7pm',
    type: 'Badminton',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 10,
  ),
  Activity(
    imageUrl: 'assets/images/PBA_badminton.jpg',
    name: 'Weekend after 7pm',
    type: 'Badminton',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 12,
  ),
];

List<PBA> PBAs = [
  PBA(
    imageUrl: 'assets/images/PBA.jpg',
    venue: 'PBA Badminton',
    address: 'Taman Lone Pine, 11500 Air Itam, Penang',
    contact: '+6018-940 2377 ',
    description: 'Open for business from 8:00am to 10pm',
    activities: activities,
  ),
];
