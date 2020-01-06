part of models;

@JsonSerializable()
class Post {
  const Post({
    this.id,
    this.userId,
    this.title,
    this.body,
  });

  final int id;
  final int userId;
  final String title;
  final String body;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
