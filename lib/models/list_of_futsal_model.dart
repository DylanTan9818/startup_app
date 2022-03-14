class FutsalList {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;

  FutsalList({
    required this.imageUrl,
    required this.venue,
    required this.address,
    required this.contact,
    required this.description,
  });
}

List<FutsalList> FutsalLists = [
  FutsalList(
    imageUrl: 'assets/images/kinta.jpg',
    venue: 'Kinta Futsal',
    address: '339-345, Lorong Kinta, 10400 George Town, Pulau Pinang',
    contact: '+6018-328 3333',
    description: 'Open for business from 8am to 12am',
  ),
  FutsalList(
    imageUrl: 'assets/images/gembira.jpg',
    venue: 'Gembira Futsal',
    address:
        '4th Floor, Gembira Parade, Lorong Delima 1, Taman Island Glades, 11600 Greenlane, Pulau Pinang',
    contact: '04-659 1119',
    description: 'Open for business from 8am to 12am',
  ),
  FutsalList(
    imageUrl: 'assets/images/futsal_arena.png',
    venue: 'Futsal Arena',
    address:
        '136, Jalan Clove Hall, George Town, 10050 George Town, Pulau Pinang',
    contact: '+6012-427 6900',
    description: 'Open for business from 8am to 12am',
  ),
  FutsalList(
    imageUrl: 'assets/images/futsal_nation.jpg',
    venue: 'Futsal Nation',
    address:
        "D' Piazza Mall, Jalan Mahsuri, Bandar Bayan Baru, 11950 Bayan Lepas, Penang",
    contact: '+6019-429 4433',
    description:
        'Open for business at 2pm to 10pm from Monday to Thursday.\Open business at 4pm to 10pm on Friday.\Open business at 8am to 10pm on Saturday and Sunday.',
  ),
  FutsalList(
    imageUrl: 'assets/images/oasis.jpg',
    venue: 'Oasis Futsal',
    address: "The Oasis, Jalan Kaki Bukit, 11700 Gelugor, Pulau Pinang",
    contact: '+6017-414 2256',
    description:
        'Open for business at 2pm to 10pm from Monday to Thursday.\Open business at 4pm to 10pm on Friday.\Open business at 8am to 10pm on Saturday and Sunday.',
  ),
  FutsalList(
    imageUrl: 'assets/images/soccer_experience.jpg',
    venue: 'Soccer Experience',
    address: "88, Jalan Loh Poh Heng, 11200 Tanjung Bungah, Pulau Pinang",
    contact: '+6011-10981366',
    description:
        'Fifa Quality Pro Field. Open for business from 8am to 12pm and 5pm to 12am everyday.',
  ),
];
