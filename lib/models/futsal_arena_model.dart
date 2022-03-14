import 'package:startup_app/models/activity_model.dart';

class FutsalArena {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  FutsalArena({
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
    imageUrl: 'assets/images/futsal_arena_book.png',
    name: 'Weekday before 7pm',
    type: 'Futsal',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 80,
  ),
  Activity(
    imageUrl: 'assets/images/futsal_arena_book.png',
    name: 'Weekday after 7pm',
    type: 'Futsal',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 90,
  ),
  Activity(
    imageUrl: 'assets/images/futsal_arena_book.png',
    name: 'Weekend before 7pm',
    type: 'Futsal',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 90,
  ),
  Activity(
    imageUrl: 'assets/images/futsal_arena_book.png',
    name: 'Weekend after 7pm',
    type: 'Futsal',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 100,
  ),
];

List<FutsalArena> FutsalArenas = [
  FutsalArena(
    imageUrl: 'assets/images/futsal_arena.png',
    venue: 'Futsal Arena',
    address:
        '136, Jalan Clove Hall, George Town, 10050 George Town, Pulau Pinang',
    contact: '+6012-427 6900',
    description: 'Open for business from 8am to 12am',
    activities: activities,
  ),
];
