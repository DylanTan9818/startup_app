class Trainer {
  String imageUrl;
  String venue;

  Trainer({
    required this.imageUrl,
    required this.venue,
  });
}

List<Trainer> Trainers = [
  Trainer(
    imageUrl: 'assets/images/group.jpg',
    venue: 'Group Training',
  ),
  Trainer(
    imageUrl: 'assets/images/personal.jpg',
    venue: 'Personal Training',
  ),
];
