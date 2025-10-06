import 'package:flutter/material.dart';
import 'package:task_08/core/util/my_constant.dart';
import 'package:task_08/core/util/my_dimens.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_appbar.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_categories.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final int _currentExploreFiled = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        // appbar
        DashboardAppbar(),
        // category
        DashboardCategories(),
        // explore files
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyDimens().getTitle("Explore Fields Today 🔥"),
            Row(
              children: List.generate(
                MyConstant.exploreItems.length,
                (i) => Container(
                  height: 10,
                  margin: EdgeInsets.only(right: 10),
                  width: _currentExploreFiled == i ? 30 : 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: _currentExploreFiled == i
                        ? Colors.teal[800]
                        : Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
