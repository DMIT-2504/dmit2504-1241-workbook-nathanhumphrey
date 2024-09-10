import 'package:http/http.dart' as http;
import 'dart:convert';

///
Future<dynamic> getJson(String endpoint) async {
  final url = Uri.parse(endpoint);
  final response = await http.get(url);
  return jsonDecode(response.body);
}
