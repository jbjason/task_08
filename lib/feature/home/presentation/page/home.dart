import 'package:flutter/material.dart';
import 'package:task_08/feature/application/presentation/page/application_screen.dart';
import 'package:task_08/feature/dashboard/presentation/page/dashboard_screen.dart';
import 'package:task_08/feature/home/presentation/widget/home_navbar.dart';
import 'package:task_08/feature/search/presentation/page/search_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _pages = [
    DashboardScreen(),
    SearchScreen(),
    TestScreen(title: "Chat Screen"),
    ApplicationScreen(),
    TestScreen(title: "Profile Screen"),
  ];
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentPage, children: _pages),
      bottomNavigationBar: HomeNavbar(
        onPageChange: _onPageChange,
        currentPage: _currentPage,
      ),
    );
  }

  void _onPageChange(int i) {
    setState(() => _currentPage = i);
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(title));
  }
}
