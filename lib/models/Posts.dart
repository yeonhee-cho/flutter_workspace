/// postId : 19
/// userId : 4
/// postImage : "/post_images/feb9408f-78dc-4878-9920-3e17723a59cc.jpg"
/// postCaption : "@frontend  소개로 시작하게 되었어요 ㅎㅎ"
/// postLocation : "성동구"
/// createdAt : "2025-12-15 09:50:02.89305"
/// updatedAt : "2025-12-15 09:50:02.89305"
/// userName : "backend"
/// userFullname : "백엔드"
/// userAvatar : "/profile_images/4e33b5a3-694b-42d9-b94d-3fc06454a703.jpg"
/// likeCount : 0
/// commentCount : 5

class Posts {
  Posts({
      num postId, 
      num userId, 
      String postImage, 
      String postCaption, 
      String postLocation, 
      String createdAt, 
      String updatedAt, 
      String userName, 
      String userFullname, 
      String userAvatar, 
      num likeCount, 
      num commentCount,}){
    _postId = postId;
    _userId = userId;
    _postImage = postImage;
    _postCaption = postCaption;
    _postLocation = postLocation;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _userName = userName;
    _userFullname = userFullname;
    _userAvatar = userAvatar;
    _likeCount = likeCount;
    _commentCount = commentCount;
}

  Posts.fromJson(dynamic json) {
    _postId = json['postId'];
    _userId = json['userId'];
    _postImage = json['postImage'];
    _postCaption = json['postCaption'];
    _postLocation = json['postLocation'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _userName = json['userName'];
    _userFullname = json['userFullname'];
    _userAvatar = json['userAvatar'];
    _likeCount = json['likeCount'];
    _commentCount = json['commentCount'];
  }
  num _postId;
  num _userId;
  String _postImage;
  String _postCaption;
  String _postLocation;
  String _createdAt;
  String _updatedAt;
  String _userName;
  String _userFullname;
  String _userAvatar;
  num _likeCount;
  num _commentCount;
Posts copyWith({  num postId,
  num userId,
  String postImage,
  String postCaption,
  String postLocation,
  String createdAt,
  String updatedAt,
  String userName,
  String userFullname,
  String userAvatar,
  num likeCount,
  num commentCount,
}) => Posts(  postId: postId ?? _postId,
  userId: userId ?? _userId,
  postImage: postImage ?? _postImage,
  postCaption: postCaption ?? _postCaption,
  postLocation: postLocation ?? _postLocation,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  userName: userName ?? _userName,
  userFullname: userFullname ?? _userFullname,
  userAvatar: userAvatar ?? _userAvatar,
  likeCount: likeCount ?? _likeCount,
  commentCount: commentCount ?? _commentCount,
);
  num get postId => _postId;
  num get userId => _userId;
  String get postImage => _postImage;
  String get postCaption => _postCaption;
  String get postLocation => _postLocation;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  String get userName => _userName;
  String get userFullname => _userFullname;
  String get userAvatar => _userAvatar;
  num get likeCount => _likeCount;
  num get commentCount => _commentCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['postId'] = _postId;
    map['userId'] = _userId;
    map['postImage'] = _postImage;
    map['postCaption'] = _postCaption;
    map['postLocation'] = _postLocation;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['userName'] = _userName;
    map['userFullname'] = _userFullname;
    map['userAvatar'] = _userAvatar;
    map['likeCount'] = _likeCount;
    map['commentCount'] = _commentCount;
    return map;
  }

}