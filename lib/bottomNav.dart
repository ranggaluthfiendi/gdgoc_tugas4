import 'package:flutter/material.dart';
import 'package:list_movie/gridView.dart';
import 'package:list_movie/listView.dart';

class bottomNavPage extends StatefulWidget {
  const bottomNavPage({super.key});

  @override
  State<bottomNavPage> createState() => _bottomNavPageState();
}

class _bottomNavPageState extends State<bottomNavPage> {
  List<Widget> _pages = [GridViewPage(), ListViewPage()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Grid View',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List View'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
