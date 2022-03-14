import 'activity_model.dart';

class Oxygen {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  Oxygen({
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
    imageUrl: 'assets/images/Oxygen_fitness.jpg',
    name: 'Gym Monthly Package',
    type: 'fitness',
    startTimes: ['1 month', '3 months'],
    rating: 5,
    price: 120,
  ),
  Activity(
    imageUrl: 'assets/images/Oxygen_fitness.jpg',
    name: 'Gym Yearly Package',
    type: 'fitness',
    startTimes: ['1 year', '3 years'],
    rating: 5,
    price: 1000,
  ),
];

List<Oxygen> Oxygens = [
  Oxygen(
    imageUrl: 'assets/images/oxygen.jpg',
    venue: 'Oxygen Fitness',
    address:
        'Lot L6-21 Gurney Paragon, Persiaran Gurney, 10250 George Town, Pulau Pinang',
    contact: '+604-218 9319',
    description:
        'Open from 6:30am to 10pm on weekdays and 7am to 10pm on weekends',
    activities: activities,
  ),
];
