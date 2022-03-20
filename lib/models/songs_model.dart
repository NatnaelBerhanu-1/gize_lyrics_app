import 'dart:convert';

class Song {
  String title;
  String? imageUrl;
  String youtubeUrl;
  String likesCount;
  String viewsCount;
  bool isFeatured;
  Song({
    required this.title,
    this.imageUrl,
    required this.youtubeUrl,
    required this.likesCount,
    required this.viewsCount,
    required this.isFeatured,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'imageUrl': imageUrl,
      'youtubeUrl': youtubeUrl,
      'likesCount': likesCount,
      'viewsCount': viewsCount,
      'isFeatured': isFeatured,
    };
  }

  factory Song.fromMap(Map<String, dynamic> map) {
    return Song(
      title: map['title'] ?? '',
      imageUrl: map['imageUrl'],
      youtubeUrl: map['youtubeUrl'] ?? '',
      likesCount: map['likesCount'] ?? '',
      viewsCount: map['viewsCount'] ?? '',
      isFeatured: map['isFeatured'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Song.fromJson(String source) => Song.fromMap(json.decode(source));
}
