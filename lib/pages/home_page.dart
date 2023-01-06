// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hello_world/components/contador_component.dart';
import 'package:hello_world/components/custom_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageStates();
  }
}

class HomePageStates extends State<HomePage>{
int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: const [CustomSwitch(),]
      ),
        body:  ListView(
            shrinkWrap: true,
            children: [
              const ContadorComponent(),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed('/todo');
                },
                child: const Text('Todo List')
                ),
            ],
          )
    );
  }
}

