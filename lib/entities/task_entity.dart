// ignore_for_file: public_member_api_docs, sort_constructors_first
class TaskEntity {
  TaskEntity({
    required this.title,
    required this.completed,
  });

  String title;
  bool completed;

  factory TaskEntity.fromMap(Map<String, dynamic> map) => 
      TaskEntity(title: map['title'], completed: map['completed']);
  
}
