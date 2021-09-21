import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todey_flutter/model/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'a black cofee'),
    Task(name: 'bf'),
    Task(name: 'book'),
  ];
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  int get taskCount{
   return _tasks.length;
  }
  void addTask(String newTaskTitle){
    final task =Task(name:newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}