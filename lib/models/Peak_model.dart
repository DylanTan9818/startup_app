import 'activity_model.dart';

class Peak {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  Peak({
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
    imageUrl: 'assets/images/Peak_fitness.jpg',
    name: 'Gym Monthly Package',
    type: 'fitness',
    startTimes: ['1 month', '3 months'],
    rating: 5,
    price: 120,
  ),
  Activity(
    imageUrl: 'assets/images/Peak_fitness.jpg',
    name: 'Gym Yearly Package',
    type: 'fitness',
    startTimes: ['1 year', '3 years'],
    rating: 5,
    price: 1000,
  ),
];

List<Peak> Peaks = [
  Peak(
    imageUrl: 'assets/images/peak.jpg',
    venue: 'Peak Fitness',
    address:
        'Plaza Gurney, Level 7, 170-07-07 170, Persiaran Gurney, 10250 George Town, Pulau Pinang',
    contact: '+604-226 4223',
    description:
        'Open from 6:30am-10pm on weekdays and 8am to 10pm on weeekends',
    activities: activities,
  ),
];
