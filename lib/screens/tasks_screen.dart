import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey_flutter/model/task.dart';
import 'package:todey_flutter/model/task_data.dart';
import 'package:todey_flutter/widgets/task_list.dart';

import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(context: context,
            isScrollControlled: true,
            builder: (context) =>
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery
                        .of(context)
                        .viewInsets
                        .bottom),
                    child: AddTaskScreen(),

                  ),
                ),
          );
        }
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30,right: 30,top: 60,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children :[
              CircleAvatar(child: Icon(Icons.list,
              size: 30.0,
              color: Colors.blueAccent,
              ),
              backgroundColor: Colors.white,
              radius: 30.0,),
                Column(
                  children: [
                    SizedBox(height: 10.0,),
                  ],
                ),
                Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),),
                Text('${Provider.of<TaskData>(context).taskCount} Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),),
            ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
                color: Colors.white,
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}


