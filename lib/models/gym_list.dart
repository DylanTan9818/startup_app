class GymList {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;

  GymList({
    required this.imageUrl,
    required this.venue,
    required this.address,
    required this.contact,
    required this.description,
  });
}

List<GymList> GymLists = [
  GymList(
    imageUrl: 'assets/images/PWR.jpg',
    venue: 'PWR Penang',
    address:
        '441-G1, Pulau Tikus Plaza, Jalan Burma, 10350 George Town, Pulau Pinang',
    contact: '+6012-622 2071',
    description: 'Open for business from 9am to 9pm',
  ),
  GymList(
    imageUrl: 'assets/images/peak.jpg',
    venue: 'Peak Fitness',
    address:
        'Plaza Gurney, Level 7, 170-07-07 170, Persiaran Gurney, 10250 George Town, Pulau Pinang',
    contact: '+604-226 4223',
    description:
        'Open from 6:30am-10pm on weekdays and 8am to 10pm on weeekends',
  ),
  GymList(
    imageUrl: 'assets/images/ultimate.jpg',
    venue: 'Ultimate Fitness',
    address:
        'No. 1, Drury Lane (Campbell Street, Kampung Jawa Lama, 10100 George Town, Pulau Pinang',
    contact: '+6017-432 2088',
    description:
        'Open from 7am to 10:30pm on weekdays, 7am - 9pm on Saturday and 9am to 6pm on Sunday',
  ),
  GymList(
    imageUrl: 'assets/images/oxygen.jpg',
    venue: 'Oxygen Fitness',
    address:
        'Lot L6-21 Gurney Paragon, Persiaran Gurney, 10250 George Town, Pulau Pinang',
    contact: '+604-218 9319',
    description:
        'Open from 6:30am to 10pm on weekdays and 7am to 10pm on weekends',
  ),
  GymList(
    imageUrl: 'assets/images/olympic.jpg',
    venue: 'The Olympic Gym',
    address: '59-B, Lebuh Tye Sin, 10300 George Town, Pulau Pinang',
    contact: '+6016-497 8741',
    description: 'Open for business from 8am to 10.00pm',
  ),
  GymList(
    imageUrl: 'assets/images/powerhouse.png',
    venue: 'Powerhouse Gym',
    address:
        ' 4-11, Island Plaza, Jalan Tanjong Tokong, Seri Tanjung Pinang, 10470 Tanjung Tokong, Penang',
    contact: '+604-390 0370',
    description:
        'Open from 7am to 10pm on weekdays and 8:30am to 8:30pm on weekends',
  ),
  GymList(
    imageUrl: 'assets/images/seven_star.jpg',
    venue: 'Seven Star Gym',
    address:
        ' 10J, Jalan Sultan Azlan Shah, Minden Heights, 11700 Gelugor, Pulau Pinang',
    contact: '+604-658 7177',
    description:
        'Open from 7:30am to 10pm on weekdays and 7:30am to 9pm on weekends',
  ),
  GymList(
    imageUrl: 'assets/images/chi.jpg',
    venue: 'Chi Fitness',
    address:
        ' All Seasons Place, Lot L3-01 to L-07,, Lebuhraya Thean Teik, 11500, Bandar Baru Air Itam, Pulau Pinang, 11500 Bandar Baru Air Itam',
    contact: '+604-828 7800',
    description:
        'Open from 7am to 10pm on weekdays, 8am to 10pm on Saturday and 8am to 8pm on weekends',
  ),
];
