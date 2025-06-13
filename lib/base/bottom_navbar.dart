import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bottom_nav_block.dart';
import '../screens/home_screen.dart';
import '../screens/search_screen.dart';
import '../screens/tickets_screen.dart';
import '../screens/profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBlock(),
      child: const _BottomNavBarView(),
    );
  }
}

class _BottomNavBarView extends StatelessWidget {
  const _BottomNavBarView({Key? key}) : super(key: key);

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavBlock, BottomNavState>(
        builder: (context, state) {
          if (state is BottomNavSelected) {
            return _widgetOptions[state.selectedIndex];
          }
          return _widgetOptions[0];
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavBlock, BottomNavState>(
        builder: (context, state) {
          int selectedIndex = 0;
          if (state is BottomNavSelected) {
            selectedIndex = state.selectedIndex;
          } else if (state is BottomNavInitial) {
            selectedIndex = state.selectedIndex;
          }
          
          return BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) => context.read<BottomNavBlock>().add(NavItemSelected(index)),
            elevation: 10,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blueGrey,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: const Color(0xFF526480),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                activeIcon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.confirmation_number_outlined),
                activeIcon: Icon(Icons.confirmation_number),
                label: "Ticket",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          );
        },
      ),
    );
  }
}