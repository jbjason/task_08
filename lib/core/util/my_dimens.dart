import 'package:flutter/material.dart';
import 'package:task_08/core/util/my_enum.dart';

class MyDimens {
  Widget getTitle(String title, {Color color = Colors.black}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  Widget getStatusCard(CourseStatus status, {int count = 0}) => Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        margin: EdgeInsets.only(right: count == 0 ? 0 : 15),
        decoration: BoxDecoration(
          color: _getStatusColors(status)[0],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Text(
              _getStatusColors(status)[2],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: _getStatusColors(status)[1],
              ),
            ),
            if (count != 0) ...[
              const SizedBox(width: 5),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Text(count.toString()),
              ),
            ],
          ],
        ),
      );

  List<dynamic> _getStatusColors(CourseStatus status) {
    switch (status) {
      case CourseStatus.active:
        return [Colors.teal.shade100, Colors.black, "Active"];
      case CourseStatus.pending:
        return [Colors.grey.shade300, Colors.black, "Pending"];
      case CourseStatus.cancelled:
        return [Colors.red.shade50, Colors.red, "Cancelled"];
    }
  }
}
