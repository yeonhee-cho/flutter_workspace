import 'package:flutter/material.dart';

class post_header extends StatefulWidget {
  const post_header({super.key});

  @override
  State<post_header> createState() => _post_headerState();
}

class _post_headerState extends State<post_header> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('post_header is working'),
      ),
    );
  }
}