import 'package:flutter/material.dart';

class MoodListScreen extends StatelessWidget {
  const MoodListScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Список записей настроения',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

