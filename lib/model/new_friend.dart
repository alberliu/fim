class NewFriend {
  static const int unread = 0;
  static const int read = 1;
  static const int agree = 2;
  static const int refuse = 3;

  int id;
  int userId;
  String nickname;
  String avatarUrl;
  String description;
  int time;
  int status;

  NewFriend(
      {this.userId,
      this.nickname,
      this.avatarUrl,
      this.description,
      this.time,
      this.status});

  NewFriend.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    userId = map["user_id"];
    nickname = map["nickname"];
    avatarUrl = map["avatar_url"];
    description = map["description"];
    time = map["time"];
    status = map["status"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "user_id": userId,
      "nickname": nickname,
      "avatar_url": avatarUrl,
      "description": description,
      "time": time,
      "status": status,
    };
  }

  @override
  String toString() {
    return "userId:$userId,nickname:$nickname,avatarUrl:$avatarUrl,description:$description,time:$time,status:$status";
  }
}
