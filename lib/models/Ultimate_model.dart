import 'activity_model.dart';

class Ultimate {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  Ultimate({
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
    imageUrl: 'assets/images/Ultimate_fitness.jpg',
    name: 'Gym Monthly Package',
    type: 'fitness',
    startTimes: ['1 month', '3 months'],
    rating: 5,
    price: 120,
  ),
  Activity(
    imageUrl: 'assets/images/Ultimate_fitness.jpg',
    name: 'Gym Yearly Package',
    type: 'fitness',
    startTimes: ['1 year', '3 years'],
    rating: 5,
    price: 1000,
  ),
];

List<Ultimate> Ultimates = [
  Ultimate(
    imageUrl: 'assets/images/ultimate.jpg',
    venue: 'Ultimate Fitness',
    address:
        'No. 1, Drury Lane (Campbell Street, Kampung Jawa Lama, 10100 George Town, Pulau Pinang',
    contact: '+6017-432 2088',
    description:
        'Open from 7am to 10:30pm on weekdays, 7am - 9pm on Saturday and 9am to 6pm on Sunday',
    activities: activities,
  ),
];
