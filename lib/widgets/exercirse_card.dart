import 'package:flutter/material.dart';
import 'package:workout/constants/colors.dart';

class ExercirseCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  const ExercirseCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
    
      decoration: BoxDecoration(
        color: KCardBgColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(0, 2))],
      ),
      child: Padding(  
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Image.asset(
              imageUrl,
              width: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 5,),
            Text(
              description,
              style: const TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.normal,
                color: kMainColor,
                 ),
            ),
          ],
        ),
      ),
    );
  }
}
