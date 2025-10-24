import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Календарь настроения',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

