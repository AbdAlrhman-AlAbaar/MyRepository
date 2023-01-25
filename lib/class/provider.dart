import 'package:flutter/foundation.dart';
import 'package:flutter_application_2/models/task.dart';

class MyNotifier with ChangeNotifier {
  List<task> tasks = [
    task(name: "go shopping"),
    task(name: "give to car"),
    task(name: "bay in bar")
  ];
  void addtask(String newtexttitle) {
    tasks.add(task(name: newtexttitle));
    notifyListeners();
  }

  void updetchekbox(task task) {
    task.donechange();
    notifyListeners();
  }

  void delelettask(task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
