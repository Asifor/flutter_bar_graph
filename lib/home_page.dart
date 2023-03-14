import 'package:flutter/material.dart';

/* 
TASK!

Input: List of weekly expenses = [sunAmount, monAmount, tueAmount, wedAmount, thurAmount, friAmount, satAmount]

Output: Display input in a bar graph


*/

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<double> weeklySummary = [
    20.88,
    32.4,
    19.3,
    29.50,
    50.99,
    38.79,
    78.30,
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
