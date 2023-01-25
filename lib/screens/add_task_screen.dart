import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/class/provider.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addtaskcolbak;
  AddTaskScreen(this.addtaskcolbak);

  @override
  Widget build(BuildContext context) {
    String? newtexttitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "add task",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.indigo[400],
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newtext) {
              newtexttitle = newtext;
            },
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              Provider.of<MyNotifier>(context, listen: false)
                  .addtask(newtexttitle!);
              Navigator.pop(context);
            },
            child: Text(
              "add",
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 8, 26, 187)),
          )
        ],
      ),
    );
  }
}
