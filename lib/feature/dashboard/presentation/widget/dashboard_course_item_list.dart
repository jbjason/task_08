import 'package:flutter/material.dart';
import 'package:task_08/config/extenstion/media_query_extension.dart';
import 'package:task_08/core/util/my_constant.dart';

class DashboardCourseItemList extends StatelessWidget {
  const DashboardCourseItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          MyConstant.courses.length,
          (i) {
            final item = MyConstant.courses[i];
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: context.screenWidth * .8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey, width: .4),
              ),
              child: Column(
                children: [
                  Row(
                    spacing: 15,
                    children: [
                      Image.asset(item.img),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              item.subTitle,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          const SizedBox(width: 5),
                          Text(item.address),
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$ ${item.price} ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "/yearly",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
