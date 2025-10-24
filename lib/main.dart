import 'package:flutter/material.dart';
import 'mood_list_screen.dart';
import 'add_mood_screen.dart';
import 'statistics_screen.dart';
import 'calendar_screen.dart';
import 'settings_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Дневник настроения',
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const MoodListScreen(),
    const AddMoodScreen(),
    const StatisticsScreen(),
    const CalendarScreen(),
    const SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Дневник настроения')),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.mood), label: 'Записи'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'Добавить'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Статистика'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Календарь'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Настройки'),
        ],
      ),
    );
  }
}
