import 'package:http/http.dart' as http;
import 'package:secoola_app/model/lecture.dart';
import 'package:secoola_app/model/lectureDetails.dart';
import 'dart:convert';
import '../model/category.dart';

class ApiService {
  static const String baseUrl = 'https://api.rafeeqissa.com/api';

  static Future<List<Category>> fetchCategories() async {
    final response = await http.get(Uri.parse('$baseUrl/category'));
    print("response.body");
    print(response.body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final List<dynamic> categoryData = responseData['data'];

      final List<Category> categories = categoryData.map((categoryJson) {
        return Category.fromJson(categoryJson);
      }).toList();

      return categories;
    } else {
      throw Exception('Failed to load categories');
    }
  }

  static Future<List<Lecture>> fetchLectures() async {
    final response = await http.get(Uri.parse('$baseUrl/lecture'));
    print("response.body");
    print(response.body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final List<dynamic> lectureData = responseData['data'];

      final List<Lecture> lectures = lectureData.map((lectureJson) {
        return Lecture.fromJson(lectureJson);
      }).toList();

      return lectures;
    } else {
      throw Exception('Failed to load lectures');
    }
  }

  static Future<List<LectureDetails>> fetchLectureDetails() async {
    final response = await http.get(Uri.parse('$baseUrl/lecture_details'));
    print("response.body");
    print(response.body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final List<dynamic> lectureDetailsData = responseData['data'];

      final List<LectureDetails> lectureDetails =
          lectureDetailsData.map((detailsJson) {
        return LectureDetails.fromJson(detailsJson);
      }).toList();

      return lectureDetails;
    } else {
      throw Exception('Failed to load lecture details');
    }
  }
}
