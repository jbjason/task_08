import 'package:flutter/material.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_appbar.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_categories.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_course_item_list.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_explore_list.dart';

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
        spacing: 25,
        children: [
          // appbar
          DashboardAppbar(),
          // category
          DashboardCategories(),
          // explore files title
          DashboardExploreList(),
          // popular courses
          DashboardCourseItemList(),
          // extra parts
          DashboardExploreList(),
        ],
      ),
    );
  }
}
