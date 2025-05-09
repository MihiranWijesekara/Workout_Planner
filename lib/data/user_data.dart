import 'package:workout/models/equipment_model.dart';
import 'package:workout/models/exercise_model.dart';
import 'package:workout/models/user_model.dart';

User user = User(
  userId: "123456",
  fullName: "Jhon Doe",
  gender: "Male",
  address: "123 Main St, Springfield, USA",
  age: 23,
  description: "Fitness enthusiast and personal trainer.",
  totlaExercisesCompleted: 0,
  totlaEquipmentHandedOver: 0,

  exerciseList: [
    Exercise(
      id: 0,
      exerciseName: 'Push Up',
      exerciseImageUrl: 'assets/exercises/push-ups.png',
      noOfMinuites: 10,
      completed: false,
    ),
    Exercise(
      id: 1,
      exerciseName: 'Squats',
      exerciseImageUrl: 'assets/exercises/Squats.png',
      noOfMinuites: 25,
      completed: false,
    ),
  ],
  equipmentList: [
    Equipment(
      id: 0,
      equipmentName: "Dumbbells",
      equipmentDescription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImageUrl: "assets/equipments/Dumbbells.png",
      noOfMinuites: 30,
      noOfCalories: 2,
      handOvered: false,
    ),
  ],
  favExerciseList: [
    Exercise(
      id: 0,
      exerciseName: 'Push Up',
      exerciseImageUrl: 'assets/exercises/push-ups.png',
      noOfMinuites: 10,
      completed: false,
    ),
  ],
  favEquipmentList: [
    Equipment(
      id: 0,
      equipmentName: "Dumbbells",
      equipmentDescription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImageUrl: "assets/equipments/Dumbbells.png",
      noOfMinuites: 30,
      noOfCalories: 2,
      handOvered: false,
    ),
  ],
);
