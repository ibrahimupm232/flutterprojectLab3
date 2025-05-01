import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/home_screen.dart';
import 'screens/hotel_details.dart';
import 'base/bottom_navbar.dart';
import 'base/bottom_nav_block.dart';
import 'base/text_expansion_block.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNavBlock()),
        BlocProvider(create: (context) => TextExpansionBlock()),
      ],
      child: MaterialApp(
        title: 'Ticket App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyHomePage(),
        onGenerateRoute: (settings) {
          if (settings.name == '/hotel') {
            final args = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(
              builder: (_) => HotelDetailsScreen(
                hotelName: args['hotelName'],
                description: args['description'],
                imageUrl: args['imageUrl'] ?? '',
                rating: args['rating'] ?? 4.0,
                price: args['price'] ?? '\$200/night',
                amenities: args['amenities'] ?? [],
              ),
            );
          }
          return null;
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> _appScreens = [
      const HomeScreen(),
      const Center(child: Text("Search")),
      const Center(child: Text("Tickets")),
      const Center(child: Text("Profile")),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<BottomNavBlock, BottomNavState>(
        builder: (context, state) {
          if (state is BottomNavSelected) {
            return _appScreens[state.selectedIndex];
          }
          return Container();
        },
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}