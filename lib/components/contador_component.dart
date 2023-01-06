import 'package:flutter/material.dart';

class ContadorComponent extends StatefulWidget {
  const ContadorComponent({ Key? key }) : super(key: key);
  
  @override
  State<ContadorComponent> createState() => _ContadorComponentState();
}

class _ContadorComponentState extends State<ContadorComponent> {
  int counter = 0;

   @override
   Widget build(BuildContext context) {
       return SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Contador $counter'),
                ElevatedButton(
                  onPressed: (){
                    setState((){
                      counter++;
                    });
                  },
                  child: const Text('Incrementar'),
                  ),
                ],
            ),
           );
  }
}