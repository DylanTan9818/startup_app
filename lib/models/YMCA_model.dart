import 'activity_model.dart';

class YMCA {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;
  List<Activity> activities;

  YMCA({
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
    imageUrl: 'assets/images/YMCAbadminton.jpg',
    name: 'Weekday before 7pm',
    type: 'Badminton',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 8,
  ),
  Activity(
    imageUrl: 'assets/images/YMCAbadminton.jpg',
    name: 'Weekday after 7pm',
    type: 'Badminton',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 10,
  ),
  Activity(
    imageUrl: 'assets/images/YMCAbadminton.jpg',
    name: 'Weekend before 7pm',
    type: 'Badminton',
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 10,
  ),
  Activity(
    imageUrl: 'assets/images/YMCAbadminton.jpg',
    name: 'Weekend after 7pm',
    type: 'Badminton',
    startTimes: ['7:00 pm', '9:00 pm'],
    rating: 5,
    price: 12,
  ),
];

List<YMCA> YMCAs = [
  YMCA(
    imageUrl: 'assets/images/kinta.jpg',
    venue: 'Kinta Futsal',
    address: '339-345, Lorong Kinta, 10400 George Town, Pulau Pinang',
    contact: '+6018-328 3333',
    description: 'Open for business from 8am to 12am',
    activities: activities,
  ),
  YMCA(
    imageUrl: 'assets/images/YMCA.jpg',
    venue: 'YMCA Penang',
    address:
        '211, Macalister Road, George Town, 10400 George Town, Pulau Pinang',
    contact: '04-2288211',
    description: 'Open for business from 8am to 12am ',
    activities: activities,
  ),
  YMCA(
    imageUrl: 'assets/images/gss.jpg',
    venue: 'GSS Penang',
    address:
        '598, Jalan Tanjung Bungah, Tanjung Tokong, 11200 Tanjung Bungah, Pulau Pinang',
    contact: '+6012-294 0521',
    description: 'Open for business from 3:30pm to 10pm',
    activities: activities,
  ),
  YMCA(
    imageUrl: 'assets/images/PWR.jpg',
    venue: 'PWR Penang',
    address:
        '441-G1, Pulau Tikus Plaza, Jalan Burma, 10350 George Town, Pulau Pinang',
    contact: '+6012-622 2071',
    description: 'Open for business from 9am to 9pm',
    activities: activities,
  ),
  YMCA(
    imageUrl: 'assets/images/gembira.jpg',
    venue: 'Gembira Futsal',
    address:
        '4th Floor, Gembira Parade, Lorong Delima 1, Taman Island Glades, 11600 Greenlane, Pulau Pinang',
    contact: '04-659 1119',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
