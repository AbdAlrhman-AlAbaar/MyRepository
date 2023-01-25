import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final bool ischecd;
  final String tasktitle;
  final void Function(bool?) checkboxchange;
  final void Function() taskdelete;
  TaskList(
      {required this.ischecd,
      required this.tasktitle,
      required this.checkboxchange,
      required this.taskdelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: ischecd ? Colors.red[400] : Colors.blue[500],
            decoration: ischecd ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: ischecd,
        onChanged: checkboxchange,
      ),
      onLongPress: taskdelete,
    );
  }
}
