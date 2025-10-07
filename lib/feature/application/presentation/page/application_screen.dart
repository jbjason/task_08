import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_08/core/util/my_constant.dart';
import 'package:task_08/core/util/my_dimens.dart';
import 'package:task_08/core/util/my_enum.dart';
import 'package:task_08/feature/dashboard/data/model/course_item.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            const SizedBox(height: 5),
            MyDimens().getTitle("Application"),
            Row(children: [
              MyDimens().getStatusCard(CourseStatus.active, count: 1),
              MyDimens().getStatusCard(CourseStatus.cancelled, count: 1),
            ]),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(MyConstant.courses.length,
                      (i) => getCourseListItem(MyConstant.courses[i])),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getCourseListItem(CourseItem item) => Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: .4),
        ),
        child: Column(
          children: [
            Text(
              item.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              spacing: 15,
              children: [
                Image.asset(item.img),
                Expanded(
                  child: Text(
                    item.subTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                MyDimens().getStatusCard(item.status),
              ],
            ),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.centerRight,
              child: Text(DateFormat.yMMMEd().format(item.date)),
            ),
          ],
        ),
      );
}
