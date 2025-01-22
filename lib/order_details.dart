import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  final String title;
  final String author;
  final int price;

  const OrderDetails({
    Key? key,
    required this.title,
    required this.author,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Book: $title',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Author: $author',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Price: \$$price',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 20.0),
            const TextField(
              decoration: InputDecoration(labelText: 'Your Name'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Address'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}
