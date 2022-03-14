class BadmintonList {
  String imageUrl;
  String venue;
  String address;
  String contact;
  String description;

  BadmintonList({
    required this.imageUrl,
    required this.venue,
    required this.address,
    required this.contact,
    required this.description,
  });
}

List<BadmintonList> BadmintonLists = [
  BadmintonList(
      imageUrl: 'assets/images/YMCA.jpg',
      venue: 'YMCA Penang',
      address:
          '211, Macalister Road, George Town, 10400 George Town, Pulau Pinang',
      contact: '04-2288211',
      description: 'Open for business from 8am to 12am '),
  BadmintonList(
    imageUrl: 'assets/images/LTT.jpg',
    venue: 'LTT Badminton',
    address: 'Taman Lone Pine, 11500 Air Itam, Penang',
    contact: '+6018-940 2377 ',
    description: 'Open for business from 8:00am to 10pm',
  ),
  BadmintonList(
    imageUrl: 'assets/images/penang_buddhist_association.jpg',
    venue: 'PBA Badminton',
    address: ' 67, Jln Perak, 10150 George Town, Pulau Pinang',
    contact: '+604-228 0910',
    description: 'Open for business from 12pm to 9.30pm',
  ),
  BadmintonList(
    imageUrl: 'assets/images/permata.jpg',
    venue: 'Permata Sports',
    address:
        '19, Lintang Paya Terubong 1, Bandar Baru Air Itam, 11600 Ayer Itam, Pulau Pinang',
    contact: '+604-826 1699',
    description: 'Open for business from 8am to 10.00pm',
  ),
  BadmintonList(
    imageUrl: 'assets/images/FRU.jpg',
    venue: 'FRU Badminton',
    address:
        '211, Jalan Macalister, George Town, 10400 George Town, Pulau Pinang',
    contact: '+604-228 8211',
    description: 'Open for business from 8am to 10.00pm',
  ),
  BadmintonList(
    imageUrl: 'assets/images/PCC.jpg',
    venue: 'PCC Badminton',
    address: '3&5, Jalan Padang Victoria, 10400 George Town, Pulau Pinang',
    contact: '+604-226 7369',
    description: 'Open for business from 8am to 10.00pm',
  ),
];
