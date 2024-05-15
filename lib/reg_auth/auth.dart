import 'package:flutter/material.dart';
import 'package:book_shop/reg_auth/reg.dart';
import 'package:book_shop/shop_pages/shop_main.dart';

class Autho extends StatelessWidget {
  const Autho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Authorization'),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
            children: [
            const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Login',
                   ),
                 ),
            const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Password',
                    ),
                 ),
            Container(height: 10,),
            ElevatedButton(
                child: const Text('Enter Account'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ShopPage()),
                  );
                },
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