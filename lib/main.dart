import 'package:flutter/material.dart';
import 'package:flutter_application_2/class/provider.dart';

import 'package:flutter_application_2/screens/tasksScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyNotifier>(
        create: (context) => MyNotifier(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: TasksScreen(),
          title: 'Flutter Demo',
        ));
  }
}
