import 'package:flutter/material.dart';
import 'package:hello_world/controllers/app_controller.dart';
import 'package:hello_world/pages/todo_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return AnimatedBuilder(
    animation: AppController.instance,
    builder: (context, child){
      return MaterialApp(
      theme: ThemeData(
      primarySwatch: Colors.red,
      
      brightness:AppController.instance.isDarkTheme
        ? Brightness.dark : Brightness.light,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home' : (context) => const HomePage(),
        '/todo' :(context) => const TodoPage(),
      },
    );
    }
   );

}
}