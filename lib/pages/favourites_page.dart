import 'package:flutter/material.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea (
        child: SingleChildScrollView(
          child: Center(
            child: Text("Favourite Page"),
          ),
        ),
      ),
    );
  }
}               
