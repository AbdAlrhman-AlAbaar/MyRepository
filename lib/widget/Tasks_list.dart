import 'package:flutter/material.dart';
import 'package:flutter_application_2/class/provider.dart';
import 'package:flutter_application_2/models/task.dart';
import 'package:flutter_application_2/widget/Task_list.dart';
import 'package:provider/provider.dart';

class taskstody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyNotifier>(
      builder: (context, taskdata, child) {
        return ListView.builder(
            itemCount: taskdata.tasks.length,
            itemBuilder: (context, index) {
              return TaskList(
                tasktitle: taskdata.tasks[index].name,
                ischecd: taskdata.tasks[index].isDone,
                checkboxchange: (Newvalue) {
                  taskdata.updetchekbox(taskdata.tasks[index]);
                },
                taskdelete: () {
                  taskdata.delelettask(taskdata.tasks[index]);
                },
              );
            });
      },
    );
  }
}
