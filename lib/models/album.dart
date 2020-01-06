part of models;

@JsonSerializable()
class Album {
  const Album({
    this.id,
    this.userId,
    this.title,
  });

  final String id;
  final String userId;
  final String title;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}
