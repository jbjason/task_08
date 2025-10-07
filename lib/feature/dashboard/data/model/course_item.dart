import 'package:task_08/core/util/my_enum.dart';

class CourseItem {
  final String img;
  final String title;
  final String subTitle;
  final String address;
  final int price;
  final CourseStatus status;
  final DateTime date;

  const CourseItem({
    required this.img,
    required this.title,
    required this.subTitle,
    required this.address,
    required this.price,
    required this.status,
    required this.date,
  });
}
