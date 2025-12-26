import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '기초 문법 연습장',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 40),

          ElevatedButton(
              onPressed: () => context.go("/if"),
              child: Text(
                'IF문 배우기',
                style: TextStyle(fontSize: 18, color: Colors.green),
              )
          ),
          const SizedBox(height: 20),

          ElevatedButton(
              onPressed: () => context.go("/for"),
              child: Text(
                'For문 배우기',
                style: TextStyle(fontSize: 18, color: Colors.green),
              )
          ),
          const SizedBox(height: 20),

          ElevatedButton(
              onPressed: () => context.go("/count"),
              child: Text(
                'count문을 통한 StatefulWidget 배우기',
                style: TextStyle(fontSize: 18, color: Colors.green),
              )
          ),
          const SizedBox(height: 20),

          ElevatedButton(
              onPressed: () => context.go("/while"),
              child: Text(
                'while문 배우기',
                style: TextStyle(fontSize: 18, color: Colors.green),
              )
          ),
        ],
      ),
    );
  }
}
