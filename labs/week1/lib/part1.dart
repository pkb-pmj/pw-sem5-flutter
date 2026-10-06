import 'dart:io';

void part1() {
  print('\n=== Part 1: Hello, Dart! ===');
  print("What's your name?");
  final name = stdin.readLineSync();
  print("What's your favourite colour?");
  final colour = stdin.readLineSync();
  print('Greetings $name! We will talk about $colour');
  final buffer = StringBuffer();
  for (var i = 1; i <= 7; i++) {
    for (var j = 0; j < i; j++) {
      buffer.write('*');
    }
    buffer.write('\n');
  }
  print(buffer);
}
