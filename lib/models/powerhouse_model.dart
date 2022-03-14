import 'activity_model.dart';

class Powerhouse {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  Powerhouse({
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
    imageUrl: 'assets/images/Powerhouse_fitness.jpg',
    name: 'Gym Monthly Package',
    type: 'fitness',
    startTimes: ['1 month', '3 months'],
    rating: 5,
    price: 120,
  ),
  Activity(
    imageUrl: 'assets/images/Powerhouse_fitness.jpg',
    name: 'Gym Yearly Package',
    type: 'fitness',
    startTimes: ['1 year', '3 years'],
    rating: 5,
    price: 1000,
  ),
];

List<Powerhouse> Powerhouses = [
  Powerhouse(
    imageUrl: 'assets/images/powerhouse.png',
    venue: 'Team Powerhouse Fitness',
    address:
        ' 4-11, Island Plaza, Jalan Tanjong Tokong, Seri Tanjung Pinang, 10470 Tanjung Tokong, Penang',
    contact: '+604-390 0370',
    description:
        'Open from 7am to 10pm on weekdays and 8:30am to 8:30pm on weekends',
    activities: activities,
  ),
];
