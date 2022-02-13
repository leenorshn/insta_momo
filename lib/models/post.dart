import 'package:insta_momo/models/user.dart';

class Post {
  User author;
  String image;
  int likes;
  int views;
  String? message;

  Post(
    this.author, {
    required this.image,
    this.message,
    required this.likes,
    required this.views,
  });
}
