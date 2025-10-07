import 'package:flutter/material.dart';
import 'package:task_08/config/extenstion/media_query_extension.dart';
import 'package:task_08/core/util/my_constant.dart';
import 'package:task_08/feature/dashboard/presentation/widget/dashboard_explore_title.dart';

class DashboardExploreList extends StatelessWidget {
  const DashboardExploreList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DashboardExploreTitle(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              MyConstant.exploreItems.length,
              (i) {
                final item = MyConstant.exploreItems[i];
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: context.screenWidth / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: .4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(item.img),
                      const SizedBox(height: 10),
                      Text(
                        item.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "${item.coursesCount} Courses",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
