import 'package:flutter/material.dart';

class post_caption extends StatefulWidget {
  const post_caption({super.key});

  @override
  State<post_caption> createState() => _post_captionState();
}

class _post_captionState extends State<post_caption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('post_caption is working'),
      ),
    );
  }
}