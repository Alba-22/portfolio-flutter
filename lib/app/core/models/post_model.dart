import 'dart:convert';

class PostsModel {
  final String title;
  final String description;
  final String origin;
  final DateTime date;
  final String image;
  final String link;

  PostsModel({
    required this.title,
    required this.description,
    required this.origin,
    required this.date,
    required this.image,
    required this.link,
  });

  PostsModel copyWith({
    String? title,
    String? description,
    String? origin,
    DateTime? date,
    String? image,
    String? link,
  }) {
    return PostsModel(
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
      'title': title,
      'description': description,
      'origin': origin,
      'date': date.millisecondsSinceEpoch,
      'image': image,
      'link': link,
    };
  }

  factory PostsModel.fromMap(Map<String, dynamic> map) {
    return PostsModel(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      origin: map['origin'] ?? '',
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      image: map['image'] ?? '',
      link: map['link'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PostsModel.fromJson(String source) => PostsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PostsModel(title: $title, description: $description, origin: $origin, date: $date, image: $image, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PostsModel &&
        other.title == title &&
        other.description == description &&
        other.origin == origin &&
        other.date == date &&
        other.image == image &&
        other.link == link;
  }

  @override
  int get hashCode {
    return title.hashCode ^ description.hashCode ^ origin.hashCode ^ date.hashCode ^ image.hashCode ^ link.hashCode;
  }
}
