import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/class/provider.dart';
import 'package:flutter_application_2/models/task.dart';
import 'package:flutter_application_2/screens/add_task_screen.dart';
import 'package:flutter_application_2/widget/Tasks_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: ((context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen((newtexttitle) {})))));
        },
        backgroundColor: Color.fromARGB(120, 87, 88, 122),
        child: Icon(Icons.add),
      ),
      backgroundColor: Color.fromARGB(255, 8, 26, 187),
      body: Container(
          padding:
              const EdgeInsets.only(top: 60, right: 20, left: 20, bottom: 70),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Icon(
                Icons.playlist_add_check,
                size: 42,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "TasksToday",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ]),
            Text(
              "${Provider.of<MyNotifier>(context).tasks.length} tasks",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: taskstody(),
              ),
            )
          ])),
    );
  }
}
