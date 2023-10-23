import 'dart:convert';

void main() {
  // Create a JSON value

  Map<String, dynamic> data = {
    jsonEncode('title'): json.encode('Silo'),
    jsonEncode('year'): json.encode(2023)
  };

  print("JSON object: $data");

  // Decode the JSON

  Map<String, dynamic> items = json.decode(data.toString());

  print("Decoded JSON: $items");
  print(items['title']);

  // The following is not what is expected!

  print("Title: $items['title']");

  // We probably meant this:

  print('Title: ${items['title']}');
}
