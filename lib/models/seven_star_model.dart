import 'activity_model.dart';

class Sevenstar {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  Sevenstar({
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
    imageUrl: 'assets/images/Sevenstar_fitness.jpg',
    name: 'Gym Monthly Package',
    type: 'fitness',
    startTimes: ['1 month', '3 months'],
    rating: 5,
    price: 120,
  ),
  Activity(
    imageUrl: 'assets/images/Sevenstar_fitness.jpg',
    name: 'Gym Yearly Package',
    type: 'fitness',
    startTimes: ['1 year', '3 years'],
    rating: 5,
    price: 1000,
  ),
];

List<Sevenstar> Sevenstars = [
  Sevenstar(
    imageUrl: 'assets/images/seven_star.jpg',
    venue: 'Seven Star Gym',
    address:
        ' 10J, Jalan Sultan Azlan Shah, Minden Heights, 11700 Gelugor, Pulau Pinang',
    contact: '+604-658 7177',
    description:
        'Open from 7:30am to 10pm on weekdays and 7:30am to 9pm on weekends',
    activities: activities,
  ),
];
