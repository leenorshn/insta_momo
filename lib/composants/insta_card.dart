import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_momo/models/post.dart';

class InstaCard extends StatelessWidget {
  const InstaCard({Key? key, required this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(post.author.avatar),
              ),
              title: Text(post.author.name),
              subtitle: Text("from ${post.author.city}"),
              trailing: Icon(Icons.more_vert),
            ),
            Image.asset(post.image),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        CupertinoIcons.suit_heart_fill,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(CupertinoIcons.chat_bubble),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.send_outlined),
                    ],
                  ),
                  const Icon(CupertinoIcons.tags)
                ],
              ),
            ),
            Text(
              "${post.likes} likes",
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Text(
              post.message!,
              style: GoogleFonts.comfortaa(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text("${post.views} views"),
          ],
        ),
      ),
    );
  }
}
