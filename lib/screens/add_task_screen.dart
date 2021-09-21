import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey_flutter/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
          color: Colors.white,
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newTitle){
                     newTaskTitle=newTitle;
                },
              ),
                ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle:TextStyle(
                      backgroundColor: Colors.blueAccent,
                      ),
                    ),
                    onPressed: () {
                     Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                     Navigator.pop(context);
                      },
                    child: Text('Add',
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                    ),
                  ),
            ],
          ),
      ),
    );
  }
}
