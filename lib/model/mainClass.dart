// To parse this JSON data, do
//
//     final mainClass = mainClassFromJson(jsonString);

import 'dart:convert';

MainClass mainClassFromJson(String str) => MainClass.fromJson(json.decode(str));

String mainClassToJson(MainClass data) => json.encode(data.toJson());

class MainClass {
  bool status;
  String message;
  Data data;

  MainClass({
    required this.status,
    required this.message,
    required this.data,
  });

  factory MainClass.fromJson(Map<String, dynamic> json) => MainClass(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  List<Category> category;
  List<Coding> papularCourses;
  List<Coding> design;
  List<Coding> coding;
  List<Coding> markt;

  Data({
    required this.category,
    required this.papularCourses,
    required this.design,
    required this.coding,
    required this.markt,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        category: List<Category>.from(
            json["Category"].map((x) => Category.fromJson(x))),
        papularCourses: List<Coding>.from(
            json["PapularCourses"].map((x) => Coding.fromJson(x))),
        design:
            List<Coding>.from(json["Design"].map((x) => Coding.fromJson(x))),
        coding:
            List<Coding>.from(json["Coding"].map((x) => Coding.fromJson(x))),
        markt: List<Coding>.from(json["Markt"].map((x) => Coding.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Category": List<dynamic>.from(category.map((x) => x.toJson())),
        "PapularCourses":
            List<dynamic>.from(papularCourses.map((x) => x.toJson())),
        "Design": List<dynamic>.from(design.map((x) => x.toJson())),
        "Coding": List<dynamic>.from(coding.map((x) => x.toJson())),
        "Markt": List<dynamic>.from(markt.map((x) => x.toJson())),
      };
}

class Category {
  int id;
  String name;
  String image;
  DateTime createdAt;
  DateTime updatedAt;

  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Coding {
  int id;
  int categoryId;
  String name;
  String description;
  String ownerCourse;
  String image;
  int countStudent;
  int evaluation;
  Language language;
  DateTime createdAt;
  DateTime updatedAt;
  Category category;

  Coding({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.ownerCourse,
    required this.image,
    required this.countStudent,
    required this.evaluation,
    required this.language,
    required this.createdAt,
    required this.updatedAt,
    required this.category,
  });

  factory Coding.fromJson(Map<String, dynamic> json) => Coding(
        id: json["id"],
        categoryId: json["category_id"],
        name: json["name"],
        description: json["description"],
        ownerCourse: json["owner_course"],
        image: json["image"],
        countStudent: json["count_student"],
        evaluation: json["evaluation"],
        language: languageValues.map[json["language"]]!,
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        category: Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_id": categoryId,
        "name": name,
        "description": description,
        "owner_course": ownerCourse,
        "image": image,
        "count_student": countStudent,
        "evaluation": evaluation,
        "language": languageValues.reverse[language],
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "category": category.toJson(),
      };
}

enum Language { ENGLISH }

final languageValues = EnumValues({"English": Language.ENGLISH});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
