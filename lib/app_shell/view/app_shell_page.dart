import 'package:app_config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:tonoa/coach/coach.dart';
import 'package:tonoa/home/home.dart';
import 'package:tonoa/library/library.dart';
import 'package:tonoa/profile/profile.dart';
import 'package:tonoa/weekly_plan/weekly_plan.dart';

class AppShellPage extends StatefulWidget {
  const AppShellPage({required this.config, super.key});

  final AppConfig config;

  @override
  State<AppShellPage> createState() => _AppShellPageState();
}

class _AppShellPageState extends State<AppShellPage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(config: widget.config),
      const CoachPage(),
      const WeeklyPlanPage(),
      const LibraryPage(),
      const ProfilePage(),
    ];

    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.auto_awesome_outlined),
            selectedIcon: Icon(Icons.auto_awesome),
            label: 'Coach',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_today_outlined),
            selectedIcon: Icon(Icons.calendar_today),
            label: 'Plan',
          ),
          NavigationDestination(
            icon: Icon(Icons.collections_bookmark_outlined),
            selectedIcon: Icon(Icons.collections_bookmark),
            label: 'Library',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
