import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  final _myBox = Hive.box('mybox');

  void createInitialData(){
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // Load the data from database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
}
}