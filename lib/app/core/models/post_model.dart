import 'dart:convert';

class PostModel {
  final int id;
  final String title;
  final String description;
  final String origin;
  final DateTime date;
  final String image;
  final String link;

  PostModel({
    required this.id,
    required this.title,
    required this.description,
    required this.origin,
    required this.date,
    required this.image,
    required this.link,
  });

  PostModel copyWith({
    int? id,
    String? title,
    String? description,
    String? origin,
    DateTime? date,
    String? image,
    String? link,
  }) {
    return PostModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      origin: origin ?? this.origin,
      date: date ?? this.date,
      image: image ?? this.image,
      link: link ?? this.link,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'origin': origin,
      'date': date.millisecondsSinceEpoch,
      'image': image,
      'link': link,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      origin: map['origin'] ?? '',
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      image: map['image'] ?? '',
      link: map['link'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) => PostModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PostModel(id: $id, title: $title, description: $description, origin: $origin, date: $date, image: $image, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PostModel &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.origin == origin &&
        other.date == date &&
        other.image == image &&
        other.link == link;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ description.hashCode ^ origin.hashCode ^ date.hashCode ^ image.hashCode ^ link.hashCode;
  }
}
