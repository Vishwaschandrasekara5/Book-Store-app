import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'order_details.dart';
import 'book.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookStore(),
    );
  }
}

class BookStore extends StatefulWidget {
  const BookStore({super.key});

  @override
  State<BookStore> createState() => _BookStoreState();
}

class _BookStoreState extends State<BookStore> {
  final List<Map<String, dynamic>> cart = []; // Holds the books added to cart

  void addToCart(String title, String author, int price) {
    setState(() {
      cart.add({'title': title, 'author': author, 'price': price});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ceylon Bookstore'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(cart: cart),
                ),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Book(
              coverImagePath: 'assets/images/book7.jpg',
              title: 'Atomic Habits',
              author: 'James Clear',
              price: 1500,
              description: 'A practical guide to building good habits and breaking bad ones.',
              onOrderPressed: (title, author, price) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetails(
                      title: title,
                      author: author,
                      price: price,
                    ),
                  ),
                );
              },
              onAddToCartPressed: addToCart,
            ),
            Book(
              coverImagePath: 'assets/images/book2.jpg',
              title: 'Rich Dad, Poor Dad',
              author: 'Robert T. Kiyosaki',
              price: 1250,
              description: 'Learn about personal finance and wealth-building strategies.',
              onOrderPressed: (title, author, price) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetails(
                      title: title,
                      author: author,
                      price: price,
                    ),
                  ),
                );
              },
              onAddToCartPressed: addToCart,
            ),
            Book(
              coverImagePath: 'assets/images/book9.jpg',
              title: 'The Alchemist',
              author: 'Paulo Coelho',
              price: 1000,
              description: 'A tale of self-discovery and following your dreams.',
              onOrderPressed: (title, author, price) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetails(
                      title: title,
                      author: author,
                      price: price,
                    ),
                  ),
                );
              },
              onAddToCartPressed: addToCart,
            ),
            Book(
              coverImagePath: 'assets/images/book4.jpg',
              title: 'Think and Grow Rich',
              author: 'Napoleon Hill',
              price: 1350,
              description: 'A classic book on achieving success and financial independence.',
              onOrderPressed: (title, author, price) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetails(
                      title: title,
                      author: author,
                      price: price,
                    ),
                  ),
                );
              },
              onAddToCartPressed: addToCart,
            ),
            Book(
              coverImagePath: 'assets/images/book5.jpg',
              title: 'The 5 AM Club',
              author: 'Robin Sharma',
              price: 1400,
              description: 'Discover the power of waking up early to transform your life.',
              onOrderPressed: (title, author, price) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetails(
                      title: title,
                      author: author,
                      price: price,
                    ),
                  ),
                );
              },
              onAddToCartPressed: addToCart,
            ),
            Book(
              coverImagePath: 'assets/images/book6.jpg',
              title: 'Deep Work',
              author: 'Cal Newport',
              price: 1600,
              description: 'Master the art of focused success in a distracted world.',
              onOrderPressed: (title, author, price) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetails(
                      title: title,
                      author: author,
                      price: price,
                    ),
                  ),
                );
              },
              onAddToCartPressed: addToCart,
            ),
          ],
        ),
      ),
    );
  }
}
