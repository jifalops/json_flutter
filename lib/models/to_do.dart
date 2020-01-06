part of models;

@JsonSerializable()
class ToDo {
  const ToDo({
    this.id,
    this.userId,
    this.title,
    this.completed,
  });

  final int id;
  final int userId;
  final String title;
  final bool completed;

  factory ToDo.fromJson(Map<String, dynamic> json) => _$ToDoFromJson(json);
  Map<String, dynamic> toJson() => _$ToDoToJson(this);
}
