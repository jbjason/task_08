import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_08/config/extenstion/media_query_extension.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar(
      {super.key, required this.currentPage, required this.onPageChange});
  final int currentPage;
  final Function onPageChange;

  @override
  Widget build(BuildContext context) {
    final navItemImages = [
      Icons.home_outlined,
      Icons.search_off,
      Icons.punch_clock_outlined,
      Icons.person_outline,
    ];
    final navItemSelectedImages = [
      Icons.home,
      CupertinoIcons.search_circle_fill,
      Icons.punch_clock,
      Icons.person,
    ];
    final itemWidth = context.screenWidth/navItemImages.length;
    return SizedBox(
      height: kBottomNavigationBarHeight * 1.5,
      child: Row(
        children: List.generate(navItemSelectedImages.length,
         (i)=>_getNavBarItem(index: i,
          icon:currentPage==i ?navItemSelectedImages[i] : 
           navItemImages[i],
            color: currentPage==i ? Colors.green:Colors.grey,
           width:itemWidth ),
      ),),
    );
  }

  Widget _getNavBarItem({
    required int index,
     required IconData icon,
    required Color color,
    required double width
  }) =>
      GestureDetector(
        onTap: () => onPageChange(index),
        child: SizedBox(
          width: width,
          child: Center(child: Icon(icon),),),
      );
}
