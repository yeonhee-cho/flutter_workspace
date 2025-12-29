import 'package:flutter/material.dart';
import 'dart:convert';

// =======================================================================
// 아래와 같이 클래스
// Post({ required this.postId,
// factory Post.fromJson(Map<String, dynamic> json) {
//    return Post(
// 을 작성하는 것이 기본 모델의 정의

// 1번 방법 : backend 에서 RestController 로 api url 에서
// 데이터가 json 형식으로 보여져야지 사용할 수 있는 방법

// https://app.quicktype.io/
// JSON to Dart 이라는 플러그인
// 파일 -> 설정 -> 플러그인 -> Marketplace 로 접속하여
// Json to Dart 플러그인 설정
// lib/models 폴더 우클릭
// new -> Dart Model from JSON

// 클래스 입력한 후 JSON 데이터 붙여넣기 {} 만 자동으로 파일 완성

// 2번 방법
// Dart Data Class Generator 플러그인 설치
// 필드만 작성 후,
// (window) Alt + insert (mac) Cmd + N
// Generator -> fromJson/toJson 선택하면 자동 완성된다.

// Alt + insert -> 생성자 선택
// =======================================================================
// _ 붙인 상태 = private, 안 붙인 상태 = public
class Post {
  int postId;
  int userId;
  String postImage;
  String postCaption;
  String postLocation;
  String createdAt;
  String userName;
  String userFullname;
  String userAvatar;
  int likeCount;
  int commentCount;

  /*
  * 자바에서는 매개변수 개수와 자료형만 다르면 클래스 명칭의 생성자를 다수 생성 가능
  * Dart 에서는 동일한 명칭의 생성자를 다수 생성 불가
  * 생성자마다 명칭을 다르게 작성해야 함
  *
  * 이름을 붙이는 방법은 .을 사용해 .하위명칭 형태로 작성,
  * 명칭은 개발자가 원하는 대로 작성 후 사용
  * Post.withDefaults
  * Post.dummy 이런 형태로 작성
  * 
  * 사용 예시
  * Post p1 = Post(postId:1, userId:100, ...)
  * Post p2 = Post.withDefaults() 필수로 매개변수 데이터를 필요로 하는 생성자가 아니기 때문에 선택적으로 작성
  *
  * 보통은 1번 방법으로 많이 사용하고 다수의 생성자를 만들지 않는다.
  * */
  // 1. 필수 생성자 - 모든 값을 필수로 작성해야하는 생성자
  // 가장 많이 사용됨
  Post({
    required this.postId,
    required this.userId,
    required this.postImage,
    required this.postCaption,
    required this.postLocation,
    required this.createdAt,
    required this.userName,
    required this.userFullname,
    required this.userAvatar,
    required this.likeCount,
    required this.commentCount,
  });

  // 2. 생성자에서 특정 변수 명칭에는 기본 값을 개발자가 작성
  Post.withDefault({
    this.postId = 0,
    this.userId = 0,
    this.postImage = '',
    this.postCaption = '',
    this.postLocation = '',
    this.createdAt = '',
    this.userName = '',
    this.userFullname = '',
    this.userAvatar = '',
    this.likeCount = 0,
    this.commentCount = 0,
  });

  // 3. 선택적 생성자로 모든 변수 데이터에 값을 추가하거나 넣어놓지 않아도 되는 생성자
  // 3번 방법을 사용할 때는 변수 이름에 ? 체인닝 형태를 사용하여 에러를 최소화하는 것이 좋다
  /*
  맨 위 자료형과 변수 명칭을 선언할 때
  ?를 전부 붙여줘야 한다
  하지만 되도록 사용하지 않기!!!
  int? postId;
  int? userId;
  String? postImage;
  String? postCaption;
  String? postLocation;
  String? createdAt;
  String? userName;
  String? userFullname;
  String? userAvatar;
  int? likeCount;
  int? commentCount;

  Post.optional({
    this.postId,
    this.userId,
    this.postImage,
    this.postCaption,
    this.postLocation,
    this.createdAt,
    this.userName,
    this.userFullname,
    this.userAvatar,
    this.likeCount,
    this.commentCount,
  });
  */

  // fromJson 은 백엔드에서 가져 온 데이터를 dart 보여주는 형식
  // toJson 은 어플에서 백엔드로 데이터를 저장할 때 사용하는 형식
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      postId: json['postId'],
      userId: json['userId'],
      postImage: json['postImage'],
      postCaption: json['postCaption'],
      postLocation: json['postLocation'],
      createdAt: json['createdAt'],
      userName: json['userName'],
      userFullname: json['userFullname'],
      userAvatar: json['userAvatar'],
      likeCount: json['likeCount'],
      commentCount: json['commentCount'],
    );
  }
  
  // Dart Data Class Generator-> 인텔리제이 자동으로 사용하는 플러그인 설정

  // from dart to dart 만드는 형식

  // 라이브 템플릿에서 변수 편집까지 끝내면 내부 코드 또한 자동으로 완성되는 템플릿 완성 가능

  // Live Template 만들기 형식을 통해
  // 우리가 직접  alt + insert 에서 생성자나 getter / setter 를 클릭하면 만들어주는
  // 기능을 설정
}

// 기본 생성자를 만드는 작업을 아래와 같이 작성
// Post(int postId, String postName) {
//    this.postId = postId
//    this.postName = postName
// }


// Json 형식 = web에서 사용하는 형식
// 어플에서는 Json 형식을 사용하려면 매번 json['postId'] 와 같이
// web 에서 가져 온 json 형식에서 'postId'라는 명칭으로 지칭 된 데이터를 사용하겠다.
// 모든 변수 이름 앞에 json 을 붙이고 [] 로 표현
// 직접 길게 작성하고 싶지 않기 때문에
// 백엔드에서 앱으로 가져 온 json 형태를 postId 라는 변수 명칭에 대입하여
// json[] 형식이 없어도 데이터를 표현 가능하도록 설정
