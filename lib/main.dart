import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout/pages/add_new_page.dart';
import 'package:workout/pages/favourites_page.dart';
import 'package:workout/pages/home_page.dart';
import 'package:workout/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const AddNewPage(),
    const FavouritesPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Workout Planner",
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.add),
              label: "Add New",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.favorite),
              label: "Favourites",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
        body: _pages[_currentIndex],
      ),
    );
  }
}
