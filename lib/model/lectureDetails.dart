class LectureDetails {
  final int id;
  final int category_id;
  final String name;
  final String description;
  final String owner_course;
  final String image;
  final String count_student;
  final String evaluation;
  final String language;
  final String createdAt;
  final String updatedAt;

  LectureDetails({
    required this.id,
    required this.category_id,
    required this.name,
    required this.description,
    required this.owner_course,
    required this.image,
    required this.count_student,
    required this.evaluation,
    required this.language,
    required this.createdAt,
    required this.updatedAt,
  });

  factory LectureDetails.fromJson(Map<String, dynamic> json) {
    return LectureDetails(
      id: json['id'],
      category_id: json['category_id'],
      name: json['name'],
      description: json['description'],
      owner_course: json['owner_course'],
      image: json['image'],
      count_student: json['count_student'],
      evaluation: json['evaluation'],
      language: json['language'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
