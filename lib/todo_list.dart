import 'dart:io';
import 'dart:math';

String getList(String fileName) {
  var todoItems = File('temp/$fileName.txt').readAsStringSync().split('\n');

  var numberedList = todoItems
      .asMap()
      .entries
      .where((entry) => entry.value.isNotEmpty)
      .map((entry) => '${entry.key + 1}. ${entry.value}')
      .toList();

  if (numberedList.isEmpty) {
    return "\n\nThere's nothing there.\n\n";
  }

  return "\n\n````````````````\n\n${numberedList.join('\n')}\n\n```````````````\n\n";
}

bool addValue(String lowerCase, String fileName) {
  try {
    File('temp/$fileName.txt')
        .writeAsStringSync('$lowerCase\n', mode: FileMode.append);
    return true;
  } catch (e) {
    return false;
  }
}

void endApp() {
  List quotes = [
    'The secret of getting ahead is getting started.',
    'Don\'t watch the clock; do what it does. Keep going.',
    'The way to get started is to quit talking and begin doing.',
    'You don\'t have to be great to start, but you have to start to be great.',
    'Start where you are. Use what you have. Do what you can.',
    'The only way to do great work is to love what you do.',
    'Success is not final, failure is not fatal: it is the courage to continue that counts.',
    'Believe you can and you\'re halfway there.',
    'The future depends on what you do today.',
    'Your time is limited, don\'t waste it living someone else\'s life.'
  ];
  String selectedQuote = quotes[Random().nextInt(quotes.length)];

  final String endMessage =
      "\n\nGood luck trying to complete your tasks! \n\nDon't forget... $selectedQuote \n";

  print(endMessage);
}
