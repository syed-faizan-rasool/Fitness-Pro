import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fitness_pro/view/Camera/progress_tracker.dart';
import 'package:fitness_pro/view/Profile/profile_screen.dart';
import 'package:fitness_pro/view/Search/progress_tracker.dart';
import 'package:fitness_pro/view/Workout_Tracker/workout_tracker.dart';
import 'package:fitness_pro/view/dashboard/view/dashboardscreen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _buildScreens(),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        backgroundColor: Colors.transparent,
        color: const Color.fromARGB(255, 96, 175, 240),
        buttonBackgroundColor: const Color.fromARGB(255, 96, 175, 240),
        height: 60,
        items: _navBarsItems(),
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      DashboardScreen(),
      WorkoutTrackerScreen(),
       ProgressTrackerScreen(),
      const ProgressScreen(),
      const ProfileScreen(),
    ];
  }

  List<Widget> _navBarsItems() {
    return [
      const Icon(Icons.home_filled, color: Colors.white),
      const Icon(Icons.fitness_center, color: Colors.white),
      const Icon(Icons.search, color: Colors.white),
      const Icon(Icons.camera_alt_rounded, color: Colors.white),
      const Icon(Icons.person, color: Colors.white),
    ];
  }
}
