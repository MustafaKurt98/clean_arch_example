import 'package:clean_arch_example/constants.dart';
import 'package:clean_arch_example/view/cart_page.dart';
import 'package:clean_arch_example/view/home_page.dart';
import 'package:clean_arch_example/view/profile_page.dart';
import 'package:clean_arch_example/view/search_page.dart';
import 'package:flutter/cupertino.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: TabBarColors.activeColor,
          inactiveColor: TabBarColors.inActiveColor,
          items: const [
            BottomNavigationBarItem(
                icon: IconClass.home, label: TabBarLable.home),
            BottomNavigationBarItem(
                icon: IconClass.search, label: TabBarLable.search),
            BottomNavigationBarItem(
                icon: IconClass.cart, label: TabBarLable.cart),
            BottomNavigationBarItem(
                icon: IconClass.profile, label: TabBarLable.profile),
          ],
        ),
        tabBuilder: (context, index) {
          late final CupertinoTabView returnValue;
          switch (index) {
            case 0:
              returnValue = CupertinoTabView(builder: (context) => const HomePage());
              break;
            case 1:
              returnValue = CupertinoTabView(builder: (context) => const SearchPage());
              break;
            case 2:
              returnValue = CupertinoTabView(builder: (context) => const CartPage());
              break;
            case 3:
              returnValue = CupertinoTabView(builder: (context) => const ProfilePage());
              break;
          }
          return returnValue;
        });
  }
}

enum TabItem { home, search, cart, profile }


