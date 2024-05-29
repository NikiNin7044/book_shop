import 'package:flutter/material.dart';
import 'package:book_shop/book_data/book_data.dart';
import 'package:book_shop/shop_pages/shop_main.dart';
import 'package:card_swiper/card_swiper.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

@override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {

  @override
  Widget build(BuildContext context) {

if (booksList[ind1].heart == true) { 
        iconcolor = Colors.red;}
      else {
        iconcolor = Colors.white;
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
            tooltip: 'Settings. WIP',
            onPressed: () {},
    ),
    ],
        ),
      body: SingleChildScrollView (
        child: Container(height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
        color: Colors.blueGrey,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 2,
              child: Swiper(                            
                    itemBuilder:
                        (BuildContext context, int index2) {                         
                return Image.asset(picsList[index2],
                fit: BoxFit.fill);
                        },
                    itemCount: 2,
                    viewportFraction: 0.7,
                    scale: 0.8,
                    pagination: const SwiperPagination(),
                    control: const SwiperControl(),
                    outer: true,
                    ),
                    ),
            Text('Title: ${booksList[ind1].title}\n'
            'Author: ${booksList[ind1].author}\n'
            'Description: ${booksList[ind1].desc}\n',
            style: const TextStyle(color: Colors.white,
            ),
            overflow: TextOverflow.fade,
            textScaler: const TextScaler.linear(2),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {}, 
                  child: const Text('Buy now')
                  ),
              ElevatedButton(style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent.withOpacity(0.1),),
                onPressed: (){
                  if (booksList[ind1].heart == true) { 
                    iconcolor = Colors.white; booksList[ind1].heart = false;}
                  else {
                    iconcolor = Colors.red; booksList[ind1].heart = true;
                  }
                    setState(() {});
                }, 
                child: Icon(color: iconcolor, Icons.favorite)
                ),
                ],
            )
          ]
          ),
        ),
      ),
    );
      }
  }