import 'package:flutter/material.dart';
import 'package:book_shop/book_data/book_data.dart';
import 'package:book_shop/shop_pages/shop_book.dart';
import 'package:book_shop/shop_pages/shop_main.dart';

List<Books> booksFavorites = [];


class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {

  @override
  Widget build(BuildContext context) {
    
    booksFavorites.clear();

    for (var count = 0; count < booksList.length; count++)
      {
        if (booksList[count].heart == true) 
        {
          
          booksFavorites.add(
            Books(
              booksList[count].id, 
              booksList[count].title, 
              booksList[count].author, 
              booksList[count].image, 
              booksList[count].image2,
              booksList[count].desc, 
              booksList[count].heart, 
              booksList[count].cart));
      }
      }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Book Shop.\nAccount: $userName' ,
        style: const TextStyle(
          color: Colors.white 
          ),
          ),
          ),
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: const Icon(color: Colors.red, Icons.favorite),
            tooltip: 'Favorites',
            onPressed: () {},
    ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings - WIP',
            onPressed: () {},
    ),
        ],
        ),
      body: GridView.builder(gridDelegate: 
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,),
      itemCount: booksFavorites.length,
      itemBuilder: (BuildContext context, int index) {
      
      if (booksFavorites[index].heart == true) { 
        iconcolor = Colors.red;}
      else {
        iconcolor = Colors.white;
      }

        return SizedBox(height: MediaQuery.of(context).size.height / 2, 
            width: MediaQuery.of(context).size.width / 2, 
          child: ElevatedButton(
            onPressed: () {
              setState((){
              ind1 = index;
              picsList = [
          booksFavorites[ind1].image, booksFavorites[ind1].image2,
                ];
              });
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BookPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent.withOpacity(0.1),
              side: const BorderSide(
                width: 2,
                color: Colors.lightBlue,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5), 
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey,
                ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(flex: 2,
                      child: Image.asset(booksFavorites[index].image,
                      fit: BoxFit.fill), ),
                  ElevatedButton(style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent.withOpacity(0.1),),
                    onPressed: ()
                    {
                      if (booksFavorites[index].heart == true) { 
        iconcolor = Colors.white; booksFavorites[index].heart = false;}
      else {
        iconcolor = Colors.red; booksFavorites[index].heart = true;
      }
                    setState(() {});
                    },
                    child: Icon(color: iconcolor, Icons.favorite)
                    ),
                  ]
                    ),
                Expanded(flex: 2,
                child: Text('Title: ${booksFavorites[index].title}\n' 
               'Author: ${booksFavorites[index].author}',
                style: const TextStyle(color: Colors.white,
                ),
                overflow: TextOverflow.fade,
                textScaler: const TextScaler.linear(2),
                ),
                ),
              ],
              ),
            ),
          ),
        );
      },
       ),
    );
  }
}