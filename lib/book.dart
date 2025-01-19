import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final int price;

  const Book({
    Key? key,
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.0,
      child: Card(
        elevation: 4.0, 
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0), // Rounded corners for the image
                child: Image.asset(
                  coverImagePath,
                  width: double.infinity,
                  height: 300.0, 
                  fit: BoxFit.cover, 
                ),
              ),
              const SizedBox(height: 10.0), 
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                'by $author',
                style: const TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              const Spacer(),  
              Text(
                '₹$price',
                style: const TextStyle(fontSize: 18.0, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
