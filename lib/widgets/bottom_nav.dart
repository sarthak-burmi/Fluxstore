import 'package:fashion_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../screens/search_screen.dart';
import '../screens/cart_screen.dart';
import '../screens/account_screen.dart';
import 'package:fashion_app/widgets/custom_app_bar.dart';
import 'package:fashion_app/widgets/category_icons.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const HomeContent(),
    const SearchScreen(),
    const CartScreen(),
    const AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: _getAppBarTitle(),
        iconPath: 'assets/images/appIcon.png',
      ),
      body: Column(
        children: [
          if (_currentIndex == 0) const CategoryIcons(),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: _pages,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  String _getAppBarTitle() {
    switch (_currentIndex) {
      case 0:
        return 'Fluxstore';
      case 1:
        return 'Search';
      case 2:
        return 'Cart';
      case 3:
        return 'Account';
      default:
        return 'Fluxstore';
    }
  }

  Padding BottomNav() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 14, 5),
      child: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          SalomonBottomBarItem(
            icon: Image.asset(
              "assets/images/home.png",
              height: 25,
            ),
            title: const Text("Shop"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              "assets/images/search.png",
              height: 25,
            ),
            title: const Text("Search"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: Stack(
              children: <Widget>[
                Image.asset(
                  "assets/images/shopping-cart.png",
                  height: 25,
                ),
                Positioned(
                  right: 1,
                  top: 0,
                  left: 12,
                  bottom: 12,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            title: const Text("Cart"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              "assets/images/user.png",
              height: 25,
            ),
            title: const Text("Account"),
            selectedColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
