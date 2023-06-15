import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentpostion = 2;
  var list = [
    const Center(
      child: Text(
        'Home',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    ),
    const Center(
      child: Text(
        'store',
        style: TextStyle(fontSize: 30),
      ),
    ),
    const Center(
      child: Text(
        'camera',
        style: TextStyle(fontSize: 30),
      ),
    ),
    const Center(
      child: Text(
        'wallet',
        style: TextStyle(fontSize: 30),
      ),
    ),
    const Center(
      child: Text(
        'history',
        style: TextStyle(fontSize: 30),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom navigation bar'),
      ),
      body: list[_currentpostion],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: _currentpostion,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentpostion = index;
          });
        },
      ),
    );
  }
}
