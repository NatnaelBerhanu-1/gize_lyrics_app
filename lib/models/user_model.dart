import 'dart:convert';

class User {
  String? name;
  String phoneNumber;
  String email;
  String profilePicUrl;
  String fcmToken;
  User({
    this.name,
    required this.phoneNumber,
    required this.email,
    required this.profilePicUrl,
    required this.fcmToken,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
      'profilePicUrl': profilePicUrl,
      'fcmToken': fcmToken,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      phoneNumber: map['phoneNumber'] ?? '',
      email: map['email'] ?? '',
      profilePicUrl: map['profilePicUrl'] ?? '',
      fcmToken: map['fcmToken'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
