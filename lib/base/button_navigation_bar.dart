import 'package:app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class BottonNavigationBar extends StatefulWidget {
  const BottonNavigationBar({super.key});

  @override
  State<BottonNavigationBar> createState() => _BottonNavigationBarState();
}

class _BottonNavigationBarState extends State<BottonNavigationBar> {
  final AppScreen = [
    const HomeScreen(),
    const Center(child: Text('Search')),
    const Center(child: Text('Tickets')),
    const Center(child: Text('Profile')),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppScreen[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Color(0xFF526400),
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(
                  FluentSystemIcons.ic_fluent_home_filled,
                  size: 20,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(
                  FluentSystemIcons.ic_fluent_search_filled,
                  size: 20,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(
                  FluentSystemIcons.ic_fluent_ticket_filled,
                  size: 20,
                ),
                label: "Tickets"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(
                  FluentSystemIcons.ic_fluent_person_filled,
                  size: 20,
                ),
                label: "Profile"),
          ],
        ));
  }
}
