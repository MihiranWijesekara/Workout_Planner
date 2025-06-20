import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout/constants/colors.dart';
import 'package:workout/constants/responsive.dart';
import 'package:workout/data/user_data.dart';
import 'package:workout/widgets/exercirse_card.dart';
import 'package:workout/widgets/progress_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Date and Time Formatting
  final DateFormat formatter = DateFormat(
    'EEEE, MMMM',
  ); // Corrected format string
  final DateFormat dayFormat = DateFormat('dd');

  //User Data
  final userData = user;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formatterDay = dayFormat.format(now);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$formattedDate $formatterDay",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kSubtitleColor,
                  ),
                ),
                Text(
                  userData.fullName,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(height: 20),
                ProgressCard(progressValue: 0.5, total: 100),
                const SizedBox(height: 20),
                Text(
                  "Today's Activity",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExercirseCard(
                      title: "Warm Up",
                      description: "See More",
                      imageUrl: "assets/equipments/Kettlebells.png",
                    ),
                    ExercirseCard(
                      title: "Equipment",
                      description: "See More",
                      imageUrl: "assets/equipments/Kettlebells.png",
                    ),
                  ],
                ),
                SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExercirseCard(
                      title: "Exercise",
                      description: "See More",
                      imageUrl: "assets/equipments/Kettlebells.png",
                    ),
                    ExercirseCard(
                      title: "Stretching",
                      description: "See More",
                      imageUrl: "assets/equipments/Kettlebells.png",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//89 finished