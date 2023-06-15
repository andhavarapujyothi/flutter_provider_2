import 'package:flutter/material.dart';

class PageViewScreeen extends StatefulWidget {
  const PageViewScreeen({super.key});

  @override
  State<PageViewScreeen> createState() => _PageViewScreeenState();
}

class _PageViewScreeenState extends State<PageViewScreeen> {
  int position = 0;

  PageController pageController = PageController(initialPage: 0);
  navigateToPage(int index) {
    setState(() {
      position = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageView'),
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            navigateToPage(index);
          },
          children: const [
            Center(
                child: Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
            Center(
                child: Text(
              'Profile',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
            Center(
                child: Text(
              'Feed',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
            Center(
                child: Text(
              'Notifications',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
            Center(
                child: Text(
              'Settings',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          currentIndex: position,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.verified_user), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.feedback), label: 'Feed'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notifications'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
          onTap: (index) {
            navigateToPage(index);
          },
        ));
  }
}
