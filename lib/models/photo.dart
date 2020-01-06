part of models;

@JsonSerializable()
class Photo {
  const Photo({
    this.id,
    this.albumId,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  final int id;
  final String albumId;
  final String title;
  final String url;
  final String thumbnailUrl;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
