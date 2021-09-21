import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
 final bool isChecked;
 final String taskTitle;
 final Function checkboxCallback;
 final Function longpressCalllback;
 TaskTile({this.isChecked,this.taskTitle,this.checkboxCallback,this.longpressCalllback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCalllback,
      title:Text(taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged:checkboxCallback,
      ),
    );
  }
}
//
//