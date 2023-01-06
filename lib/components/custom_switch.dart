import 'package:flutter/material.dart';
import 'package:hello_world/controllers/app_controller.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Trocar Tema de Fundo'),
        Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value){
            AppController.instance.changeTheme();
          },
        ),
      ],
    );
  }
}