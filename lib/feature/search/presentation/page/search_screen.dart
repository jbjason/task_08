import 'package:flutter/material.dart';
import 'package:task_08/core/util/my_constant.dart';
import 'package:task_08/core/util/my_dimens.dart';
import 'package:task_08/core/util/my_icons.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_categories.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_course_item_list.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
            Row(
              spacing: 15,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(Icons.arrow_back_ios_new),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      label: Text("Search..."),
                      prefixIcon: Image.asset(MyIcons.search1),
                      suffixIcon: Image.asset(MyIcons.settings),
                      filled: true,
                      fillColor: Colors.white,
                      enabled: false,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    onTapOutside: (_) => FocusScope.of(context).unfocus(),
                  ),
                ),
              ],
            ),
            DashboardCategories(),
            MyDimens().getTitle("Found Courses (23)"),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    MyConstant.courses.length,
                    (i) => Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: DashboardCourseItemList().getCourseListItem(
                        MyConstant.courses[i],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
