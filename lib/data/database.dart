import 'package:hive/hive.dart';

class ToDoDataBase {
  final _myBox = Hive.box('mybox');

  List<dynamic> toDoList = [];
  void createInitialData() {
    toDoList = [
      ["Create A Flutter App", false],
      ['Do DSA', false],
      ['Complete the Assignments', true],
    ];
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updateData() {
    _myBox.put('TODOLIST', toDoList);
  }
}
