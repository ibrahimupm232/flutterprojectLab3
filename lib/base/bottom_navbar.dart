import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bottom_nav_block.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBlock, BottomNavState>(
      builder: (context, state) {
        int selectedIndex = 0;
        if (state is BottomNavSelected) {
          selectedIndex = state.selectedIndex;
        }

        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined), activeIcon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_outlined), activeIcon: Icon(Icons.airplane_ticket), label: 'Tickets'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), activeIcon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            context.read<BottomNavBlock>().add(NavItemSelected(index));
          },
        );
      },
    );
  }
}