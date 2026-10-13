import 'dart:math';

void part2() {
  print('\n=== Part 2: Collections & loops ===');
  final random = Random();
  final randomList = <int>[];
  for (var i = 0; i < 30; i++) {
    final val = random.nextInt(20);
    randomList.add(val);
  }
  print(randomList);

  randomList.sort((a, b) => b.compareTo(a));
  print(randomList);

  print(randomList.where((x) => (x % 3) == 0).toSet());

  final unique = randomList.where((x) => (x % 3) == 0).toSet();
  for (final (i, val) in unique.indexed) {
    print('$i, $val, ${val.isEven ? 'even' : 'odd'}');
  }

  final set = {
    'Warszawa',
    'Białystok',
    'Lublin',
    'Gdańsk',
    'Elbląg',
    'Wrocław',
  };
  final map = {for (final key in set) key: key.length};
  print(map);
  final map2 = <String, List<String>>{};
  for (final key in set) {
    if (!map2.containsKey(key[0])) {
      map2[key[0]] = [];
    }
    map2[key[0]]!.add(key);
  }
  print(map2);
}
