import 'package:auto_route/auto_route.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Colors.white,
      routes: const [
        HomeRouter(),
        CategoryRoute(),
        SearchRoute(),
        ProfileRoute()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavyBar(
          onItemSelected: tabsRouter.setActiveIndex,
          selectedIndex: tabsRouter.activeIndex,
          backgroundColor: Colors.white,
          items: [
            BottomNavyBarItem(
                icon: const Icon(
                  Icons.home,
                  size: 24,
                ),
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                title: const Text('home')),
            BottomNavyBarItem(
                icon: const Icon(
                  Icons.category,
                  size: 24,
                ),
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                title: const Text('category')),
            BottomNavyBarItem(
                icon: const Icon(
                  Icons.search,
                  size: 24,
                ),
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                title: const Text('search')),
            BottomNavyBarItem(
                icon: const Icon(
                  Icons.person,
                  size: 24,
                ),
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                title: const Text('profile')),
          ],
        );

        // return SalomonBottomBar(
        //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        //   currentIndex: tabsRouter.activeIndex,
        //   onTap: tabsRouter.setActiveIndex,
        //   items: [
        //     SalomonBottomBarItem(
        //       selectedColor: Colors.amberAccent,
        //       icon: const Icon(
        //         Icons.home,
        //         size: 24,
        //       ),
        //       title: const Text('home'),
        //     ),
        //     SalomonBottomBarItem(
        //       selectedColor: Colors.amberAccent,
        //       icon: const Icon(
        //         Icons.category,
        //         size: 24,
        //       ),
        //       title: const Text('category'),
        //     ),
        //     SalomonBottomBarItem(
        //       selectedColor: Colors.amberAccent,
        //       icon: const Icon(
        //         Icons.search,
        //         size: 24,
        //       ),
        //       title: const Text('search'),
        //     ),
        //     SalomonBottomBarItem(
        //       selectedColor: Colors.amberAccent,
        //       icon: const Icon(
        //         Icons.person,
        //         size: 24,
        //       ),
        //       title: const Text('profile'),
        //     ),
        //   ],
        // );
      },
    );
  }
}
