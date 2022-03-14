import 'activity_model.dart';

class Olympic {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  Olympic({
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
    imageUrl: 'assets/images/Olympic_fitness.jpg',
    name: 'Gym Monthly Package',
    type: 'fitness',
    startTimes: ['1 month', '3 months'],
    rating: 5,
    price: 120,
  ),
  Activity(
    imageUrl: 'assets/images/Olympic_fitness.jpg',
    name: 'Gym Yearly Package',
    type: 'fitness',
    startTimes: ['1 year', '3 years'],
    rating: 5,
    price: 1000,
  ),
];

List<Olympic> Olympics = [
  Olympic(
    imageUrl: 'assets/images/Olympic.jpg',
    venue: 'Olympic Fitness',
    address:
        'Lot L6-21 Gurney Paragon, Persiaran Gurney, 10250 George Town, Pulau Pinang',
    contact: '+604-218 9319',
    description:
        'Open from 6:30am to 10pm on weekdays and 7am to 10pm on weekends',
    activities: activities,
  ),
];
