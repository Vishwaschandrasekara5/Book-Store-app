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
    return Card(
      child: ListTile(
        leading: Image.asset(coverImagePath,width: 50.0,height: 70.0,),
        title: Text(title),
        subtitle: Text('by $author'),
        trailing: Text('₹$price'),
      ),
    );
  }
}
