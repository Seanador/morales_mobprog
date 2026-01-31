import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:morales_mobprog/constants.dart';
import 'package:morales_mobprog/screens/notification_screen.dart';
import '../screens/newsfeed_screen.dart';
import '../widgets/custom_font.dart';
import '../screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  final String username;
  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    String appBarTitle = _selectedIndex == 0
        ? 'seanstagram'
        : _selectedIndex == 1
        ? 'Notifications'
        : widget.username;

    Color titleColor = FB_DARK_PRIMARY;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomAppBar,
        shadowColor: FB_TEXT_COLOR_WHITE,
        elevation: 2,
        title: CustomFont(
          text: appBarTitle,
          fontSize: ScreenUtil().setSp(25),
          color: titleColor,
          fontFamily: 'Klavika',
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          const NewsFeedScreen(),
          const NotificationScreen(),
          ProfileScreen(username: widget.username),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: FB_DARK_PRIMARY,
        backgroundColor: CustomAppBar,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
