class Store {
  String image, name, subTitle, subTitle2;

  Store({
    required this.image,
    required this.name,
    required this.subTitle,
    required this.subTitle2,
  });
}

List<Store> store = [
  Store(
    name: 'The Heart of Hell',
    subTitle: "Mitch Weiss",
    subTitle2:
        "The untold story of courage and sacrifice in the shadow of Iwo Jima.",
    image: "assets/images/store/heart_hell.png",
  ),
  Store(
    name: 'Adrennes 1944',
    subTitle: "Antony Beevor",
    subTitle2: "#1 international bestseller and award winning history book.",
    image: "assets/images/store/adrennes.png",
  ),
  Store(
    name: 'War on the Gothic Line',
    subTitle: "Christian Jennings",
    subTitle2:
        "Through the eyes of thirteen men and women from seven different nations",
    image: "assets/images/store/war_gothic.png",
  ),
];
