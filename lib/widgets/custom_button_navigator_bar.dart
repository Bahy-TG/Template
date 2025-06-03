import 'package:flutter/material.dart';
import 'package:test_app/features/updates/view/screen/update_screen.dart';
import '../features/home/view/screen/home_screen.dart';

class CustomButtonNavigatorBar extends StatefulWidget {
  const CustomButtonNavigatorBar({super.key});

  @override
  _CustomButtonNavigatorBarState createState() =>
      _CustomButtonNavigatorBarState();
}

class _CustomButtonNavigatorBarState extends State<CustomButtonNavigatorBar> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = [
    const HomeScreen(),
    const UpdateScreen(),
    Center(child: Text('Communities')),
    Center(child: Text('Calls')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    _screens[_selectedIndex];
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined), label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
        BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Communities'),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }
}
