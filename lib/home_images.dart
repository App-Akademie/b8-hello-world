import 'package:flutter/material.dart';

class HomeImages extends StatelessWidget {
  HomeImages({super.key});

  final List<String> names = [
    'David',
    'Max',
    'Benjamin',
    'Test',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Images'),
      ),
      body: ListView(
        children: [
          if (names.isEmpty) Text('Liste ist leer'),
          for (final item in names) Text(item),
          Image.asset('assets/images/image.png'),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            width: 150,
            height: 150,
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              'https://plus.unsplash.com/premium_photo-1670493556860-13e006e6faa4?q=80&w=3097&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          TextButton(
            onPressed: () {},
            child: Text('Mein Textbutton'),
          ),
          FilledButton(
            onPressed: () {
              print('Filledbutton gedrückt');
            },
            child: Text('Mein Button'),
          )
        ],
      ),
    );
  }
}
