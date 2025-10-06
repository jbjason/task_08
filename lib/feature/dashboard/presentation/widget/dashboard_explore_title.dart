import 'package:flutter/material.dart';
import 'package:task_08/core/util/my_constant.dart';
import 'package:task_08/core/util/my_dimens.dart';

class DashboardExploreTitle extends StatelessWidget {
  const DashboardExploreTitle({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyDimens().getTitle("Explore Fields Today 🔥"),
            Row(
              children: List.generate(
                MyConstant.exploreItems.length,
                (i) => Container(
                  height: 10,
                  margin: EdgeInsets.only(right: 10),
                  width: 0 == i ? 30 : 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: 0 == i
                        ? Colors.teal[800]
                        : Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        );
  }
}