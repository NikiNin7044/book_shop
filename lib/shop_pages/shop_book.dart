import 'package:flutter/material.dart';
import 'package:book_shop/book_data/book_data.dart';
import 'package:book_shop/shop_pages/shop_main.dart';
import 'package:card_swiper/card_swiper.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView (
        child: Container(height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
        color: Colors.grey,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: 
            Text('#${booksList[ind1].id}',
            style: const TextStyle(color: Colors.white,
            ),
            textScaler: const TextScaler.linear(3),
            ),
            ),
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
            Expanded(flex: 2,
            child: Text('Book: ${booksList[ind1].name}\n'
            'Code: ${booksList[ind1].code}',
            style: const TextStyle(color: Colors.white,
            ),
            overflow: TextOverflow.fade,
            textScaler: const TextScaler.linear(2),
            ),
            ),
          ]
          ),
        ),
      ),
    );
      }
  }