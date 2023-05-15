import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> args) async {
  var url = "https://jsonplaceholder.typicode.com/todos";
  var response = await http.get(Uri.parse(url));

  var todos = jsonDecode(response.body);

  for (var todo in todos) {
    print(todo['title']);
  }


}
