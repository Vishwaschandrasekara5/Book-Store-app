import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final List<Map<String, dynamic>> cart;

  const CartPage({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: Colors.blue,
      ),
      body: cart.isEmpty
          ? const Center(
              child: Text('Your cart is empty!'),
            )
          : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                final book = cart[index];
                return ListTile(
                  title: Text(book['title']),
                  subtitle: Text('by ${book['author']}'),
                  trailing: Text('\$${book['price']}'),
                );
              },
            ),
    );
  }
}
