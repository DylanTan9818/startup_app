import 'activity_model.dart';

class Chi {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  Chi({
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
    imageUrl: 'assets/images/Chi_fitness.jpg',
    name: 'Gym Monthly Package',
    type: 'fitness',
    startTimes: ['1 month', '3 months'],
    rating: 5,
    price: 120,
  ),
  Activity(
    imageUrl: 'assets/images/Chi_fitness.jpg',
    name: 'Gym Yearly Package',
    type: 'fitness',
    startTimes: ['1 year', '3 years'],
    rating: 5,
    price: 1000,
  ),
];

List<Chi> Chis = [
  Chi(
    imageUrl: 'assets/images/chi.jpg',
    venue: 'Chi Fitness',
    address:
        ' All Seasons Place, Lot L3-01 to L-07,, Lebuhraya Thean Teik, 11500, Bandar Baru Air Itam, Pulau Pinang, 11500 Bandar Baru Air Itam',
    contact: '+604-828 7800',
    description:
        'Open from 7am to 10pm on weekdays, 8am to 10pm on Saturday and 8am to 8pm on weekends',
    activities: activities,
  ),
];
