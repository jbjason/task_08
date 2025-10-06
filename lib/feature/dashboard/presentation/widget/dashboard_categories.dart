import 'package:flutter/material.dart';
import 'package:task_08/core/util/my_constant.dart';

class DashboardCategories extends StatefulWidget {
  const DashboardCategories({super.key});
  @override
  State<DashboardCategories> createState() => _DashboardCategoriesState();
}

class _DashboardCategoriesState extends State<DashboardCategories> {
  int _selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return  Row(
          children:List.generate(MyConstant.categories.length, (i)=>
          GestureDetector(
            onTap: (){
              setState(() {
                _selectedCategory = i;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: i==_selectedCategory ? Colors.teal[900]:Colors.grey.shade200,
              ),
              child: Text(MyConstant.categories[i],
              style: TextStyle(color:  i==_selectedCategory ? Colors.white:Colors.black),
              ),
            ),
          ),
          ),
        );
  }
}