import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({required this.imageUrl, super.key});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Column(
        children: [
          Text('Mein Bild:'),
          Image.network(imageUrl),
        ],
      ),
    );
  }
}
