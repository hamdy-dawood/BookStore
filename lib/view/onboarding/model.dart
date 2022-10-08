class Model {
  String image, title;

  Model({
    required this.image,
    required this.title,
  });
}

class OnBoardingController {
  int currentPage = 0;
  List<Model> model = [
    Model(
      title: 'Share Your Favourite Books With Your Family And Friends',
      image: "assets/images/intro/share.png",
    ),
    Model(
      title: 'Discovery 20 Million Books Shelved Online',
      image: "assets/images/intro/discover.png",
    ),
    Model(
      title: 'Buy And Sell Books With Us',
      image: "assets/images/intro/buy.png",
    ),
  ];
}
