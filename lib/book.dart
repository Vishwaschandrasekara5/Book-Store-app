import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final int price;
  final String description;
  final void Function(String, String, int) onOrderPressed;
  final void Function(String, String, int) onAddToCartPressed;

  const Book({
    Key? key,
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
    required this.description,
    required this.onOrderPressed,
    required this.onAddToCartPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showBookDetails(context),
      child: SizedBox(
        height: 500.0,
        child: Card(
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    coverImagePath,
                    width: 200.0,
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  title,
                  style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5.0),
                Text(
                  'by $author',
                  style: const TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
                const SizedBox(height: 10.0),
                Text(
                  '\$$price',
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                      ),
                      onPressed: () => onOrderPressed(title, author, price),
                      child: const Text(
                        'Order',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                      ),
                      onPressed: () => onAddToCartPressed(title, author, price),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showBookDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  coverImagePath,
                  width: 150.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Author: $author',
                  style: const TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Price: \$$price',
                  style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14.0, color: Colors.black87),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
