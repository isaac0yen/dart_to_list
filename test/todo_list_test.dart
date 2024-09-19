import 'dart:io';

import 'package:todo_list/todo_list.dart' as todo_list;
import 'package:test/test.dart';

void main() {
  const fileName = 'test_list';
  group('Todo List Tests', () {
    setUp(() {
      File('temp/$fileName.txt').writeAsStringSync('');
    });

    tearDown(() {
      // Clean up the temporary file after each test
      File('temp/$fileName.txt').deleteSync();
    });

    test('getList returns a string', () {
      expect(todo_list.getList(fileName), isA<String>());
    });

    test('getList returns empty message when list is empty', () {
      expect(todo_list.getList(fileName),
          equals("\n\nThere's nothing there.\n\n"));
    });

    test('getList returns numbered list when items exist', () {
      File('temp/$fileName.txt')
          .writeAsStringSync('Buy groceries\nWalk the dog\n');
      expect(todo_list.getList(fileName),
          equals("\n\n1. Buy groceries\n2. Walk the dog\n\n"));
    });

    test('addValue adds a new todo to the list', () {
      expect(todo_list.addValue('Buy groceries', fileName), isTrue);
      expect(File('temp/$fileName.txt').readAsStringSync(),
          equals('Buy groceries\n'));
    });

    test('addValue appends to existing list', () {
      File('temp/$fileName.txt').writeAsStringSync('Buy groceries\n');
      expect(todo_list.addValue('Walk the dog', fileName), isTrue);
      expect(File('temp/$fileName.txt').readAsStringSync(),
          equals('Buy groceries\nWalk the dog\n'));
    });
  });
}
