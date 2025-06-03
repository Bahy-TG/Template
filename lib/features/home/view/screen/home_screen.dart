import 'package:flutter/material.dart';
import 'package:test_app/features/Calls/view/screen/calls_screen.dart';
import 'package:test_app/features/updates/view/screen/update_screen.dart';
import 'package:test_app/features/home/view/widgets/home_app_bar.dart';
import 'package:test_app/features/home/view/widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Screens to switch between
  final List<Widget> _screens = [
    Column(
      children: [
        homeAppBar(),
        const Expanded(child: HomeBody()),
      ],
    ),
    const UpdateScreen(),
    const Center(child: Text('Communities')),
    const CallsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
