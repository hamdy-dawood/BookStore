class Picks {
  String image, name;

  Picks({
    required this.image,
    required this.name,
  });
}

List<Picks> picks = [
  Picks(
    name: 'Emile Zola',
    image: "assets/images/picks/emile_zola.png",
  ),
  Picks(
    name: 'The Fetal',
    image: "assets/images/picks/fatal_tree.png",
  ),
  Picks(
    name: 'Fatherhood',
    image: "assets/images/picks/fatherhood.png",
  ),
  Picks(
    name: 'Day Four',
    image: "assets/images/picks/day_four.png",
  ),
  Picks(
    name: 'Travellers',
    image: "assets/images/picks/time_travellers.png",
  ),
];

class TrendingBook {
  String image;

  TrendingBook({
    required this.image,
  });
}

List<TrendingBook> trendingBook = [
  TrendingBook(
    image: "assets/images/books/queen_hearts.png",
  ),
  TrendingBook(
    image: "assets/images/books/once_while.png",
  ),
  TrendingBook(
    image: "assets/images/books/red_queen.png",
  ),
  TrendingBook(
    image: "assets/images/books/martian.png",
  ),
  TrendingBook(
    image: "assets/images/books/life.png",
  ),
  TrendingBook(
    image: "assets/images/books/willows.png",
  ),
];

class BestShare {
  String image, name;

  BestShare({
    required this.image,
    required this.name,
  });
}

List<BestShare> bestShare = [
  BestShare(
    name: 'Fatherhood',
    image: "assets/images/books/zoo.png",
  ),
  BestShare(
    name: 'In A Land Of Pape Gods',
    image: "assets/images/books/land_paper.png",
  ),
  BestShare(
    name: 'Tattletale',
    image: "assets/images/books/tattletale.png",
  ),
];
