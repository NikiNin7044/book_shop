import 'package:flutter/material.dart';

final loginText = TextEditingController();
final passText = TextEditingController();
final conpassText = TextEditingController();
bool loginDisabled = true;

class Regi extends StatefulWidget {
  const Regi({super.key});

  @override
  State <Regi> createState() => _RegiState();
}

class _RegiState extends State<Regi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Center(child: Text('Registration.' ,
        style: TextStyle(
          color: Colors.white 
          ),
          ),
          ),
        backgroundColor: Colors.cyan,
        ),
      body: SingleChildScrollView(
        child: Center(
              child: Column(
              children: [
                TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Create Login',
                     ),
                    controller: loginText),
                TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Create Password',
                     ),
                    controller: passText),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Confirm Password',
                      ),
                    controller: conpassText),
                Container(height: 10,),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
              context: context,
              builder: (context) {
                if (passText.text == conpassText.text && loginText.text != '' 
                && passText.text != '') {
                  loginDisabled = false; 
                  return const AlertDialog(
                content: Text('Registration complete.'),
              );
                }
                else if(loginText.text == '' || passText.text == '') {
                  return const AlertDialog(
                content: Text('Blank Login and/or Password!'),
              );
                }
                else {
                  return const AlertDialog(
                content: Text('Passwords do NOT match!'),
              );
                }
            },
          );
                  },
                  child: const Text('Register Account'),
                ),
                Container(height: 30,),
                TextButton(
                  onPressed: () {loginDisabled
                  ? () => null : Navigator.pop(context); },
                  child: const Text('Log in here!'),
                ),
                ],
                ),
          ),
      ),
    );
  }
}