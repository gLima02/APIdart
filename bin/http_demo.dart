import 'dart:convert';

import 'package:http/http.dart' as http;
void main(List<String> arguments) async {
  final response = await getTodo();
  print(response['title']);
  print(response['completed']);
}

Future<Map> getTodo() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  final response = await http.get(url);
  final Map map = jsonDecode(response.body);
  return map;
}
