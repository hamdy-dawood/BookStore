class Account {
  String image, name;

  Account({
    required this.image,
    required this.name,
  });
}

List<Account> account = [
  Account(
    name: 'My Cart',
    image: "assets/images/icons/cart.png",
  ),
  Account(
    name: 'Purchases ',
    image: "assets/images/icons/purchases.png",
  ),
  Account(
    name: 'Fatherhood',
    image: "assets/images/icons/profile.png",
  ),
];

class Settings {
  String image, name;

  Settings({
    required this.image,
    required this.name,
  });
}

List<Settings> settings = [
  Settings(
    name: 'Night Mode',
    image: "assets/images/icons/night_mode.png",
  ),
  Settings(
    name: 'Notification',
    image: "assets/images/icons/notification.png",
  ),
  Settings(
    name: 'Language',
    image: "assets/images/icons/language.png",
  ),
  Settings(
    name: 'Help',
    image: "assets/images/icons/help.png",
  ),
  Settings(
    name: 'Sign Out',
    image: "assets/images/icons/sign_out.png",
  ),
];
