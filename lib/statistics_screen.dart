import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Статистика настроения',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

