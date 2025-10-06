import 'package:flutter/material.dart';
import 'package:task_08/core/util/my_dimens.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_appbar.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_categories.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_course_item_list.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_explore_list.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_explore_title.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          // appbar
          DashboardAppbar(),
          // category
          DashboardCategories(),
          // explore files title
          DashboardExploreTitle() ,
          DashboardExploreList(),
          // popular courses
          MyDimens().getTitle("Popular Courses 🔥"), 
          DashboardCourseItemList(),
          // extra parts
          DashboardExploreTitle() ,
          DashboardExploreList(),
        ],
      ),
    );
  }
}
