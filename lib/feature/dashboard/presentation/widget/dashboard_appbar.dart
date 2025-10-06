import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_08/config/extenstion/media_query_extension.dart';
import 'package:task_08/core/util/my_color.dart';
import 'package:task_08/core/util/my_icons.dart';
import 'package:task_08/core/util/my_image.dart';

class DashboardAppbar extends StatelessWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * .22,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [ MyColor.primaryColor, const Color(0xFF067F81)],
        ),
        borderRadius: BorderRadiusDirectional.vertical(
          bottom: Radius.circular(17),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 15,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(MyImage.mainLogo),
              Image.asset(MyImage.defaultProfile),
            ],
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              label: Text("Search..."),
              prefixIcon: Image.asset(MyIcons.search1),
              filled: true,
              fillColor: Colors.white,
              enabled: false,
              // enabledBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.blue),
              //   borderRadius: BorderRadius.circular(30.0),
              // ),
              // focusedBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.blue),
              //   borderRadius: BorderRadius.circular(30.0),
              // ),
              // disabledBorder: OutlineInputBorder(
              //   borderSide: BorderSide.none,
              //   borderRadius: BorderRadius.circular(30.0),
              // ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            onTapOutside: (_) => FocusScope.of(context).unfocus(),
          ),
        ],
      ),
    );
  }
}
