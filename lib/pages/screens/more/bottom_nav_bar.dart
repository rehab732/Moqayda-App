import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moqayda/pages/screens/more/favourite_page.dart';
import 'package:moqayda/pages/screens/auth/profile_page.dart';
import 'package:moqayda/utilities/app_color.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../chat/all_chats.dart';
import 'add_post_page.dart';
import 'home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final bottomNavBarController = PersistentTabController();
  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const FavouritePage(),
      const AddPostPage(),
      const AllChats(),
      const ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.house),
        // title: ("Home"),
        activeColorPrimary: AppColors.activeColorBottomNavBar,
        inactiveColorPrimary: AppColors.inactiveColorBottomNavBar,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.heart),
        // title: ("Favorites"),
        activeColorPrimary: AppColors.activeColorBottomNavBar,
        inactiveColorPrimary: AppColors.inactiveColorBottomNavBar,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.add_circled,
          color: Colors.white,
        ),
        // title: ("Add"),
        activeColorPrimary: AppColors.activeColorBottomNavBar,
        inactiveColorPrimary: AppColors.inactiveColorBottomNavBar,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.chart_bar_circle),
        // title: ("Chat"),
        activeColorPrimary: AppColors.activeColorBottomNavBar,
        inactiveColorPrimary: AppColors.inactiveColorBottomNavBar,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.profile_circled),
        // title: ("Profile"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: AppColors.inactiveColorBottomNavBar,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PersistentTabView(
      context,
      controller: bottomNavBarController,
      screens: _buildScreens(),
      items: _navBarsItems(),

      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style16, // Choose the nav bar style with this property.
    ));
  }
}
