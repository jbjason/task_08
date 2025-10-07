import 'package:task_08/core/util/my_enum.dart';
import 'package:task_08/core/util/my_icons.dart';
import 'package:task_08/core/util/my_image.dart';
import 'package:task_08/feature/dashboard/data/model/course_item.dart';
import 'package:task_08/feature/dashboard/data/model/explore_item.dart';

class MyConstant {
  static const List<String> categories = [
    "Foundation",
    "Hello000",
    "Exammm",
    "Graduate",
  ];
  static const navItems = ["Home", "Search", "Chat", "Application", "Profile"];

  static const List<String> navItemImages = [
    MyIcons.home1,
    MyIcons.search1,
    MyIcons.message1,
    MyIcons.file1,
    MyIcons.user1,
  ];
  static const navItemSelectedImages = [
    MyIcons.home2,
    MyIcons.search2,
    MyIcons.message2,
    MyIcons.file2,
    MyIcons.user2,
  ];

  static List<ExploreItem> exploreItems = [
    ExploreItem(
      img: MyImage.explore1,
      title: "Data Science & Analytics",
      coursesCount: 20,
    ),
    ExploreItem(
      img: MyImage.explore2,
      title: "Creative Arts and Design",
      coursesCount: 15,
    ),
    ExploreItem(
      img: MyImage.explore3,
      title: "Environmental Science and Sustainability",
      coursesCount: 10,
    ),
  ];

  static List<CourseItem> courses = [
    CourseItem(
      img: MyImage.course1,
      title: "BA (Hons) International Business Pathways with Foundation Year",
      subTitle: "University of the West of Scotland London (UWS)",
      address: "London",
      price: 9535,
      status: CourseStatus.cancelled,
      date: DateTime.now()
    ),
    CourseItem(
      img: MyImage.course2,
      title: "BA (Hons) International Business Pathways with Foundation Year",
      subTitle: "University of the West of Scotland London (UWS)",
      address: "London",
      price: 9535,
      status: CourseStatus.active,
      date: DateTime.now()
    ),
    CourseItem(
      img: MyImage.course3,
      title: "BA (Hons) International Business Pathways with Foundation Year",
      subTitle: "University of the West of Scotland London (UWS)",
      address: "London",
      price: 9535,
      status: CourseStatus.pending,
      date: DateTime.now()
    ),
    CourseItem(
      img: MyImage.course4,
      title: "BA (Hons) International Business Pathways with Foundation Year",
      subTitle: "University of the West of Scotland London (UWS)",
      address: "London",
      price: 9535,
      status: CourseStatus.cancelled,
      date: DateTime.now()
    ),
  ];
}
