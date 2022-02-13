import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_momo/composants/insta_card.dart';
import 'package:insta_momo/models/post.dart';
import 'package:insta_momo/models/user.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var posts = <Post>[
    Post(User(name: "Ornela", avatar: "images/3.jpg", city: "goma"),
        image: "images/2.jpg",
        likes: 28894,
        views: 2003848,
        message: "Just uuuu!!!"),
    Post(User(name: "Victorine", avatar: "images/3.jpg", city: "goma"),
        image: "images/4.jpg",
        likes: 2889,
        views: 20048,
        message: "Just uuuu!!!"),
    Post(User(name: "Dani", avatar: "images/2.jpg", city: "Bubo"),
        image: "images/6.jpg", likes: 2884, views: 3848, message: ""),
    Post(
      User(name: "Paolo", avatar: "images/3.jpg", city: "Beni"),
      image: "images/5.jpg",
      likes: 28,
      views: 200,
      message: "Just uuuu!!!",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Insta-momo"),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            "images/comments.svg",
            height: 16,
            width: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 8,
          bottom: 140,
        ),
        itemBuilder: (context, index) {
          Post _post = posts[index];
          return InstaCard(
            post: _post,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset(
          "images/heart.svg",
          height: 24,
          width: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
