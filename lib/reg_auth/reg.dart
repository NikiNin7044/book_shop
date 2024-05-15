import 'package:flutter/material.dart';


class Regi extends StatelessWidget {
  const Regi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: SingleChildScrollView(
        child: Center(
              child: Column(
              children: [
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your E-mail',
                      ),
                    ),
                const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Create your Login',
                     ),
                    ),
                const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Create a Password',
                     ),
                    ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Confirm the Password',
                      ),
                    ),
                Container(height: 10,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Register Account'),
                ),
                Container(height: 30,),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Log in here!'),
                ),
                ],
                ),
          ),
      ),
    );
  }
}