import 'package:flutter/material.dart';
import 'package:book_shop/book_data/book_data.dart';
import 'package:book_shop/shop_pages/shop_book.dart';
import 'package:book_shop/reg_auth/auth.dart';

var ind1 = 0;
String userName = loginAuthText.text;
List<String> picsList = [
        booksList[ind1].image, booksList[ind1].image2,
      ];

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  @override
  Widget build(BuildContext context) {

    var height2 = MediaQuery.of(context).size.height / 2;
    var width2 = MediaQuery.of(context).size.width / 2;
    
    return Scaffold(
      body: GridView.builder(gridDelegate: 
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
      itemCount: booksList.length,
      itemBuilder: (BuildContext context, int index) {
      
        return ElevatedButton(
          onPressed: () {
            setState((){
            ind1 = index;
            picsList = [
        booksList[ind1].image, booksList[ind1].image2,
      ];
            });
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BookPage()),
            );
          },
          child: Container(height: height2, width: width2, margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5), 
          decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: 
              Text('#${booksList[index].id}',
              style: const TextStyle(color: Colors.white,
              ),
              textScaler: const TextScaler.linear(3),
              ),
              ),
              Expanded(flex: 2,
                child: Image.asset(booksList[index].image),
                ),
              Expanded(flex: 2,
              child: Text('Book: ${booksList[index].name}\n' 
             'Code: ${booksList[index].code}',
              style: const TextStyle(color: Colors.white,
              ),
              overflow: TextOverflow.fade,
              textScaler: const TextScaler.linear(2),
              ),
              ),
            ],
            ),
          ),
        );
      },
       ),
    );
  }
}