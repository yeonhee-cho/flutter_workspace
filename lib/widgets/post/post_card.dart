import 'package:flutter/material.dart';
import 'package:flutter_project/models/Post.dart';
import 'package:flutter_project/widgets/post/post_image.dart';

class PostCard extends StatelessWidget {
  final Post post;

  PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostImage(post: post),
        Divider(), // 게시물 마다 실선으로 분류
      ],
    );
  }
}