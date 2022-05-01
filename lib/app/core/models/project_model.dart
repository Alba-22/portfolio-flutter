import 'dart:convert';

import 'package:alba/app/core/models/tech.dart';
import 'package:flutter/foundation.dart';

class ProjectModel {
  final String title;
  final String description;
  final List<Tech> techs;
  final String image;

  ProjectModel({
    required this.title,
    required this.description,
    required this.techs,
    required this.image,
  });

  ProjectModel copyWith({
    String? title,
    String? description,
    List<Tech>? techs,
    String? image,
  }) {
    return ProjectModel(
      title: title ?? this.title,
      description: description ?? this.description,
      techs: techs ?? this.techs,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'techs': techs.map((x) => x.name).toList(),
      'image': image,
    };
  }

  factory ProjectModel.fromMap(Map<String, dynamic> map) {
    return ProjectModel(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      techs: List<Tech>.from(map['techs']?.map((x) => Tech.values.byName(x))),
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectModel.fromJson(String source) => ProjectModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProjectModel(title: $title, description: $description, techs: $techs, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProjectModel &&
        other.title == title &&
        other.description == description &&
        listEquals(other.techs, techs) &&
        other.image == image;
  }

  @override
  int get hashCode {
    return title.hashCode ^ description.hashCode ^ techs.hashCode ^ image.hashCode;
  }
}
