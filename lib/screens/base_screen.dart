import 'package:education_app/constants/color.dart';
import 'package:education_app/screens/featuerd_screen.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          backgroundColor: Colors.white,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/star.png',
                height: 24,
              ),
              icon: Image.asset(
                'assets/icons/star_outlined.png',
                height: 24,
              ),
              label: "Featured",
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/play.png',
                height: 24,
              ),
              icon: Image.asset(
                'assets/icons/play_outlined.png',
                height: 24,
              ),
              label: "My Learning",
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/heart.png',
                height: 24,
              ),
              icon: Image.asset(
                'assets/icons/heart_outlined.png',
                height: 24,
              ),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/settings.png',
                height: 24,
              ),
              icon: Image.asset(
                'assets/icons/settings_outlined.png',
                height: 24,
              ),
              label: "Settings",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
