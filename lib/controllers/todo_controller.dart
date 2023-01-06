import 'package:hello_world/entities/task_entity.dart';
import 'package:hello_world/repositories/todo_repository.dart';

class TodoController{
  Future<List<TaskEntity>> getTasks() async{

    TodoRepository rep = TodoRepository();
    List<TaskEntity> tasks = [];

    var result = await rep.getTaskList();

    result.data.forEach((value){
      tasks.add(TaskEntity.fromMap(value));
    });

    return tasks;
  }
}