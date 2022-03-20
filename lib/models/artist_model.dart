import 'dart:convert';

class Artist {
  String? id;
  String name;
  String imageUrl;
  String likesCount;
  String searchIndex;
  Artist({
    this.id,
    required this.name,
    required this.imageUrl,
    required this.likesCount,
    required this.searchIndex,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'likesCount': likesCount,
      'searchIndex': searchIndex,
    };
  }

  factory Artist.fromMap(Map<String, dynamic> map) {
    return Artist(
      id: map['id'],
      name: map['name'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      likesCount: map['likesCount'] ?? '',
      searchIndex: map['searchIndex'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Artist.fromJson(String source) => Artist.fromMap(json.decode(source));
}
