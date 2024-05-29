import 'package:flutter/material.dart';
import 'package:book_shop/reg_auth/reg.dart';
import 'package:book_shop/shop_pages/shop_main.dart';

final loginAuthText = TextEditingController();
final passAuthText = TextEditingController();
bool authDisabled = true;

class Autho extends StatefulWidget {
  const Autho({super.key});

  @override
  State<Autho> createState() => _AuthoState();
}

class _AuthoState extends State<Autho> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Center(child: Text('Authorization.' ,
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
                    hintText: 'Enter Login',
                   ),
                 controller: loginAuthText),
            TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                    ),
                 controller: passAuthText),
            Container(height: 10,),
            ElevatedButton(
                child: const Text('Enter Account'),
                onPressed: () {
                     showDialog(
              context: context,
              builder: (context) {
                if (passAuthText.text == passText.text && loginAuthText.text == loginText.text ||
                loginAuthText.text == 'n') {
                  authDisabled = false; 
                  return AlertDialog(
                content: Text('Welcome, ${loginAuthText.text}'),
              );
                }
                else {
                  return const AlertDialog(
                content: Text('Incorrect Login or Password!'),
              );
                }
              },
              );
                authDisabled
                  ? () => null : Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ShopPage()),
                  );},
            ),
            Container(height: 30,),
            TextButton(
                child: const Text('Register here!'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Regi()),
                  );
                },
              ),
            ],
                  ),
          ),
      ),
    );
  }
}