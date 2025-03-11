import 'package:flutter/material.dart';
import 'Screens/Tasks_Screen.dart';
import 'package:provider/provider.dart';
import 'modeles/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: "Flatter App",
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
        debugShowCheckedModeBanner: false,
        home: const TasksScreen(),
      ),
    );
  }
}
