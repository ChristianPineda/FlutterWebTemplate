import 'package:ui/Values/StringApp.dart';

class Menu {
  final String title, image;

  Menu({this.title, this.image});
}

List<Menu> menu = [
  Menu(
    title: officeStr,
    image: "assets/images/menu1.jpg",
  ),
  Menu(
    title: devStr,
    image: "assets/images/menu2.png",
  ),
  Menu(
    title: uxuiStr,
    image: "assets/images/menu3.png",
  ),
  Menu(
    title: supportStr,
    image: "assets/images/menu4.png",
  ),
];