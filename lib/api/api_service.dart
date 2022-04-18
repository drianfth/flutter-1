import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/tourism_place.dart';

class ApiService {
  Future<TourismResult> topHeadlines() async {
    // final response = await http.get(Uri.parse('http://localhost:8080/'));
    final response = await http.get(Uri.parse('http://10.252.130.33:8080/'));
    if (response.statusCode == 200) {
      return TourismResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}
