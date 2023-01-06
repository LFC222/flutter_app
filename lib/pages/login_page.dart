import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body(){
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('/images/logo.png'),
                ),
              Container(
                height: 20,
              ),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      TextField(
                        
                  onChanged: (text){
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.white70,
                    ),
                    border: OutlineInputBorder(),
                  ),
              ),
              Container(height: 10,),
              TextField(
                  
                  onChanged: (text){
                    password = text;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                      color: Colors.white70,
                    )
                  ),
              ),
              Container(height: 10),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                  ),
                  onPressed: (){
                    if(email == 'lucas@gmail.com' && password == '123'){
                      Navigator.of(context).pushReplacementNamed('/home');
                    }
                  },
                  child: const Text('Entrar')
                  ),
                    ],
                  ),
                ),
              ),
              ],
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('/images/b5.jpg',fit: BoxFit.cover,)
            ),
            Container(
              color: Colors.black.withOpacity(0.3),
            ),
          _body(),

        ],
      )
    );
  }
}