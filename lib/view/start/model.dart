class Topic {
  String image, name;
  bool isChoose;

  Topic({
    required this.image,
    required this.name,
    required this.isChoose,
  });
}

List<Topic> topic = [
  Topic(
    name: 'Politics',
    image: "assets/images/topics/politics.png",
    isChoose: false,
  ),
  Topic(
    name: 'History',
    image: "assets/images/topics/history.png",
    isChoose: false,
  ),
  Topic(
    name: 'Science',
    image: "assets/images/topics/science.png",
    isChoose: false,
  ),
  Topic(
    name: 'Law',
    image: "assets/images/topics/law.png",
    isChoose: false,
  ),
  Topic(
    name: 'Food',
    image: "assets/images/topics/food.png",
    isChoose: false,
  ),
  Topic(
    name: 'Medical',
    image: "assets/images/topics/medical.png",
    isChoose: false,
  ),
  Topic(
    name: 'Design',
    image: "assets/images/topics/design.png",
    isChoose: false,
  ),
  Topic(
    name: 'Culture',
    image: "assets/images/topics/culture.png",
    isChoose: false,
  ),
  Topic(
    name: 'Sport',
    image: "assets/images/topics/ball.png",
    isChoose: false,
  ),
];
