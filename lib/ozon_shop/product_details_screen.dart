import 'package:flutter/material.dart';
import 'product.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            height: 400,
            child: PageView.builder(
              controller: _pageController,
              itemCount: widget.product.imageUrls.length,
              itemBuilder: (context, index) {
                return Image.network(
                  widget.product.imageUrls[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.product.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Price: ${widget.product.price} ₽',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Description:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  widget.product.descriptions.join('\n'),
                  style: const TextStyle(
                    fontSize: 19,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}