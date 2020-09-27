import 'dart:typed_data';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todolist/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Finish Presenation'),
    Task(name: 'Buy New Laptop'),
    Task(name: 'Go To Exerise'),
    Task(name: 'Grocery Shopping'),
    Task(name: 'Laundry'),
    Task(name: 'Work On New Project'),


  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task= Task(name: newTaskTitle);
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
