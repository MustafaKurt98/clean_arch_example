import 'package:clean_arch_example/constants.dart';
import 'package:clean_arch_example/view/activity/activity_page.dart';
import 'package:clean_arch_example/view/home/home_page.dart';
import 'package:clean_arch_example/view/programs/programs_page.dart';
import 'package:clean_arch_example/view/workouts/workouts_page.dart';
import 'package:flutter/cupertino.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: TabBarColors.primaryColor,
          inactiveColor: TabBarColors.inActiveColor,
          items: const [
            BottomNavigationBarItem(
                icon: IconClass.home, label: TabBarLable.home),
            BottomNavigationBarItem(
                icon: IconClass.workouts, label: TabBarLable.workouts),
            BottomNavigationBarItem(
                icon: IconClass.activity, label: TabBarLable.activity),
            BottomNavigationBarItem(
                icon: IconClass.programs, label: TabBarLable.programs),
          ],
        ),
        tabBuilder: (context, index) {
          late final CupertinoTabView returnValue;
          switch (index) {
            case 0:
              returnValue =
                  CupertinoTabView(builder: (context) => const HomePage());
              break;
            case 1:
              returnValue =
                  CupertinoTabView(builder: (context) => const WorkoutPage());
              break;
            case 2:
              returnValue =
                  CupertinoTabView(builder: (context) => const CartPage());
              break;
            case 3:
              returnValue =
                  CupertinoTabView(builder: (context) => const ProfilePage());
              break;
          }
          return returnValue;
        });
  }
}

enum TabItem { home, search, cart, profile }
