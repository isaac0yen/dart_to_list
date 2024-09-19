import 'package:todo_list/todo_list.dart' as todo_list;
import 'dart:io';

void main() {
  final fileName = 'todo_list';
  void listToDo() {
    var todoItems = todo_list.getList(fileName);
    print(todoItems);
  }

  print('Which command do you want to use? \n\n');
  print('l - List todo items');
  print('a - Add todo items');
  print('exit - To exit the application \n\n');

  String? input = stdin.readLineSync();

  if (input?.toLowerCase() == 'l') {
    listToDo();
    main();
  } else if (input?.toLowerCase() == 'a') {
    print('Add your task');
    String? val = stdin.readLineSync();

    if (val!.toLowerCase().isNotEmpty) {
      var added = todo_list.addValue(val.toLowerCase(), fileName);

      if (added == true) {
        print('\n\n\nFile added sucessfully!\n\n\n');
        main();
      }
    }
  } else if (input?.toLowerCase() == 'exit') {
    todo_list.endApp();
  } else {
    print('Invalid input');
    main();
  }
}
