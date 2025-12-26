import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/custom_app_bar.dart';
import 'package:flutter_project/widgets/custom_bottom_nav.dart';
import 'package:flutter_project/widgets/custom_drawer.dart';
import 'package:flutter_project/widgets/custom_fab.dart';
import 'package:flutter_project/widgets/main_body.dart';
// 플러터 사용에 있어 우선은 필요!

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      // 디버그 띠 없애기
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(),
        body: const MainBody(),
        bottomNavigationBar: CustomBottomNav(),
        floatingActionButton: CustomFab(),
        drawer: CustomDrawer(),

        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
