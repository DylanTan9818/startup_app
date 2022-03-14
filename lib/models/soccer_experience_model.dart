import 'package:startup_app/models/activity_model.dart';

class SoccerExperience {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  SoccerExperience({
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
    imageUrl: 'assets/images/experience.png',
    name: 'Weekday before 7pm',
    type: 'Futsal',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 80,
  ),
  Activity(
    imageUrl: 'assets/images/experience.png',
    name: 'Weekday after 7pm',
    type: 'Futsal',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 90,
  ),
  Activity(
    imageUrl: 'assets/images/experience.png',
    name: 'Weekend before 7pm',
    type: 'Futsal',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 90,
  ),
  Activity(
    imageUrl: 'assets/images/experience.png',
    name: 'Weekend after 7pm',
    type: 'Futsal',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 100,
  ),
];

List<SoccerExperience> SoccerExperiences = [
  SoccerExperience(
    imageUrl: 'assets/images/soccer_experience.jpg',
    venue: 'Soccer Experience',
    address: "88, Jalan Loh Poh Heng, 11200 Tanjung Bungah, Pulau Pinang",
    contact: '+6011-10981366',
    description:
        'Fifa Quality Pro Field. Open for business from 8am to 12pm and 5pm to 12am everyday.',
    activities: activities,
  ),
];
