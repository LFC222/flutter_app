import 'package:flutter/material.dart';
import 'package:hello_world/components/task_component.dart';
import 'package:hello_world/controllers/todo_controller.dart';
import 'package:hello_world/entities/task_entity.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TodoController controller = TodoController();
  List<TaskEntity> tasks = [];
  bool isLoading = true;

  @override
  void initState(){
    super.initState();

    getTask();
  }

  getTask()async{
    tasks = await controller.getTasks();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do List'),
      ),
      body: isLoading
      ? const Center(child: CircularProgressIndicator(),)
        // ignore: prefer_const_constructors
        : Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index){
            return TaskComponent(task: tasks[index]);
          }
          ),
        )
    );
  }
}