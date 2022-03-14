class TableTennisLists {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;

  TableTennisLists({
    required this.imageUrl,
    required this.venue,
    required this.address,
    required this.contact,
    required this.description,
  });
}

List<TableTennisLists> TableTennisListss = [
  TableTennisLists(
    imageUrl: 'assets/images/ptta.png',
    venue: 'Penang Table Tennis',
    address:
        'No., 22, Gat Lebuh Macallum, Georgetown, 10300 George Town, Penang',
    contact: '+6043701722',
    description: 'Open for business from 2pm to 10pm',
  ),
  TableTennisLists(
    imageUrl: 'assets/images/gss.jpg',
    venue: 'GSS Penang',
    address:
        '598, Jalan Tanjung Bungah, Tanjung Tokong, 11200 Tanjung Bungah, Pulau Pinang',
    contact: '+6012-294 0521',
    description: 'Open for business from 3:30pm to 10pm',
  ),
  TableTennisLists(
    imageUrl: 'assets/images/elite_table_tennis.jpg',
    venue: 'Elite Table Tennis',
    address: ' 381A-1-1, Jln Perak, Jelutong, 11600 George Town, Penang',
    contact: '+6012-564 9255',
    description: 'Open for business from 12pm to 9.30pm',
  ),
  TableTennisLists(
    imageUrl: 'assets/images/acuda.jpg',
    venue: 'Acuda Table Tennis',
    address:
        'Jalan Dato Ismail Hashim, Desa Ria, 11900 Bayan Lepas, Pulau Pinang',
    contact: '+6012-431 2028',
    description: 'Open for business from 9am to 10.00pm',
  ),
];
