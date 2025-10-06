import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_08/config/extenstion/media_query_extension.dart';

class DashboardAppbar extends StatelessWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: context.screenHeight * .25,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                 const Color.fromARGB(255, 0, 29, 26),

                 const Color.fromARGB(255, 1, 146, 132),
              ],
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
                  FlutterLogo(size: 40),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(CupertinoIcons.person),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  label: Text("Search..."),
                  prefixIcon: Icon(CupertinoIcons.search),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onTapOutside: (_) => FocusScope.of(context).unfocus(),
              ),
            ],
          ),
        );
  }
}