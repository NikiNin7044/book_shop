import 'package:flutter/material.dart';
import 'product_data.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductListScreen extends StatelessWidget {
  final Cards cards;

  const ProductListScreen({Key? key, required this.cards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("товар"),
      ),
      body: Container(
        color: Colors.pink[50],
        child: Column(
          children: [
            Container(
              color: Colors.blueAccent,
              child: CarouselSlider.builder(
                itemCount: cards.images.carouselImages.length,
                itemBuilder: (BuildContext context, int index, int pageViewIndex) {
                  return Image.network(cards.images.carouselImages[index]);
                },
                options: CarouselOptions(
                  height: 400,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.7,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                cards.name,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24.0),
              child: Text(
                cards.description,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24.0),
              child: Text(
                'Цена: ${cards.price.toStringAsFixed(2)} ₽', 
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

