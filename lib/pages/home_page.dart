// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:adaptive_navbar/adaptive_navbar.dart';
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
    final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AdaptiveNavBar(
          screenWidth: sw,
          title: const Text('HomePage'),
          navBarItems: [
            NavBarItem(
              text: 'HomePage',
              onTap: (){
                Navigator.pushNamed(context, '/home');
              },
              ),
            NavBarItem(
              text: 'TodoList',
              onTap: (){
                Navigator.pushNamed(context, '/todo');
              },
              )
          ],
        ),
        body:  ListView(
            padding: const EdgeInsets.all(8),
            children: const [
              ContadorComponent(),
              CustomSwitch(),
            ],
            
          )
    );
  }
}

