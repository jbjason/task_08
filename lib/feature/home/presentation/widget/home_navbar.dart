import 'package:flutter/material.dart';
import 'package:task_08/config/extenstion/media_query_extension.dart';
import 'package:task_08/core/util/my_constant.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar(
      {super.key, required this.currentPage, required this.onPageChange});
  final int currentPage;
  final Function onPageChange;

  @override
  Widget build(BuildContext context) {
    final items = MyConstant.navItemImages;
    final itemWidth = context.screenWidth / items.length;
    return SizedBox(
      height: kBottomNavigationBarHeight * 1.5,
      child: Row(
        children: List.generate(
          items.length,
          (i) => _getNavBarItem(
            index: i,
            image: currentPage == i
                ? MyConstant.navItemSelectedImages[i]
                : MyConstant.navItemImages[i],
            color: currentPage == i ? Colors.green : Colors.grey,
            title: MyConstant.navItems[i],
            width: itemWidth,
          ),
        ),
      ),
    );
  }

  Widget _getNavBarItem(
          {required int index,
          required String image,
          required Color color,
          required String title,
          required double width}) =>
      GestureDetector(
        onTap: () => onPageChange(index),
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              Image.asset(image),
              const SizedBox(height: 5),
              FittedBox(child: Text(title))
            ],
          ),
        ),
      );
}
