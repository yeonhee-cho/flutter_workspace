import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WhileScreen extends StatefulWidget {
  const WhileScreen({super.key});

  @override
  State<WhileScreen> createState() => _WhileScreenState();
}

class _WhileScreenState extends State<WhileScreen> {
  /*
  * 변수나 함수 선언
  * 기능 작성
  * */
  /*
  * 예제 1번
  * 생성자에서 필수 매개변수를 사용하지 않고,
  * 일반적으로 데이터를 전역변수에 추가하는 방법
  * */
  int count = 0; // 전역 변수

  // 반환 값이 없는 기능 작성
  void runWhile () {
    int temp = 0; // run 함수 내부에서만 사용될 수 있는 지역 변수
    // 지역 변수는 runWhile() 함수 내부에서만 알고 있는 변수 공간 명칭
    // runWhile() 함수를 탈출하고 나면 다른 곳에서는 temp 라는 명칭을 알지 못 함
    // 전체적으로 class 내부에서 temp 의 데이터를 사용할 수 있도록 설정

    while (temp < 5) {
      temp++; // while 에서 temp 가 5가 될 때까지 출력
    }

    // 생성자를 거치지 않고 데이터를 State 형태로 저장하는 방법
    setState(() {
      count = temp;
    });
  }

  /*
  * 예제 2번
  * initState를 사용하여 생성자를 통하여
  * 데이터를 전역변수에 추가하는 방법
  * */
  int initCount = 0;

  @override
  void initState() {
    // ctrl + o
    super.initState();

    while (initCount < 3) {
      // print 라는 것은 개발자를 위해 출력하는 함수이기 때문에
      // debugPrint
      debugPrint('initCount : ${initCount}');
      initCount++;
    }
  }

  // widget css ui 작성
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('if문 예제'),
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () => context.go('/'),
            icon : const Icon(Icons.arrow_back)
        ),
      ),

      /*
       * Center 내부에 Column 형식으로 만든 후,
       * 클릭하여 count Text 출력가능하게 설정
       * */
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: runWhile,
                child: Text('1번 방법의 while 실행하기')
            ),
            SizedBox(height: 20),

            Text(
              '$count'
            ),
            SizedBox(height: 20),

            Text('버튼 클릭없이 자동으로 증가하는 while문'),
            Text('initCount = $initCount'),
            SizedBox(height: 20),

            ElevatedButton(
                onPressed: initState,
                child:Text('2번 방법의 while 실행하기')
            ),
            Text('버튼 클릭을 통하여 init Count 출력 : $initCount')
          ],
        ),
      ),
    );
  }
}