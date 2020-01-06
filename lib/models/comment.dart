part of models;

@JsonSerializable()
class Comment {
  const Comment({
    this.id,
    this.postId,
    this.name,
    this.email,
    this.body,
  });

  final String id;
  final String postId;
  final String name;
  final String email;
  final String body;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
  Map<String, dynamic> toJson() => _$CommentToJson(this);
}
