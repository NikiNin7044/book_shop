import 'package:flutter/material.dart';
import 'package:book_shop/book_data/book_data.dart';
import 'package:book_shop/shop_pages/shop_book.dart';

var ind1 = 0;

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

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
            ind1 = index;
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BookPage()),
            );
          },
          child: Container(height: height2, width: width2, margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5), color: Colors.grey,
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