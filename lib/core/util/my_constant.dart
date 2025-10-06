import 'package:task_08/feature/dashboard/data/model/explore_item.dart';

class MyConstant {
  static const List<String> categories = [
    "Foundation",
    "Hello000",
    "Exammm",
    "Graduate",
  ];

  static List<ExploreItem> exploreItems = [
    ExploreItem(
      img: "assets/img.png",
      title: "Data Science & Analytics",
      coursesCount: 20,
    ),
    ExploreItem(
      img: "assets/img.png",
      title: "Data Science ",
      coursesCount: 15,
    ),
    ExploreItem(
      img: "assets/img.png",
      title: "Science & Analytics",
      coursesCount: 10,
    ),
  ];
}
