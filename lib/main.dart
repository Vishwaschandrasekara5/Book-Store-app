import 'package:flutter/material.dart';
import 'book.dart'; // Import the Book widget

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ceylon Bookstore'),
          backgroundColor: Colors.blue, // AppBar background color
        ),
        body: SafeArea(
          child: ListView(
            children: const [
              Book(
                coverImagePath: 'assets/images/book7.jpg',
                title: 'Rich Dad, Poor Dad',
                author: 'Robert T. Kiyosaki',
                price: 1250,
              ),
              Book(
                coverImagePath: 'assets/images/book2.jpg',
                title: 'The Alchemist',
                author: 'Coelho Paulo',
                price: 1000,
              ),
              Book(
                coverImagePath: 'assets/images/book2.jpg',
                title: 'Men are From Mars',
                author: 'John Gray',
                price: 1500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
