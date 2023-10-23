void main() {
  // Create some mappings to then add to a list.

  Map<String, dynamic> silo = {"title": "Silo", "year": 2023, "episodes": 12};

  Map<String, dynamic> severence = {"title": "Severence", "year": 2023};

  Map<String, dynamic> foundation = {
    "title": "Foundation",
    "year": 2023,
    "episodes": 10
  };

  List series = [silo, severence, foundation];

  Map<String, dynamic> current = series[0];

  print(current);
  print(current['title']);
  print(current['episodes']);

  current = series[1];
  print(current);
  print(current['title']);
  print(current['episodes']);

  if (!current.containsKey("episode")) {
    print("This entry has no episode: $current");
  }

  Map<int, String> tv = {0: 'Silo', 1: 'Severence', 2: 'Federation'};
  Map<int, String> more = {3: 'Empire', 4: 'Lost'};

  tv.addEntries(more.entries);
  tv.forEach((key, value) {
    print('$key: $value');
  });
}
