import 'package:flutter/material.dart';
import 'package:flutter_project/models/Post.dart';
import 'package:flutter_project/services/post_service.dart';
import 'package:flutter_project/widgets/post/post_card.dart';

// StatefulWidget 유동적으로 변할 때!!
class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  List<Post> posts = [];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadPosts();
  }

  void loadPosts() async {
    try {
      var data = await PostService.getPosts();
      setState(() {
        posts = data;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      debugPrint('오류 : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostCard(post: posts[index]);
        },
      )
    );
  }
}