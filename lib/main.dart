import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        endDrawer: Drawer(),
        appBar: AppBar(
          title: Text('Meine App'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text('Hello Torsten!'),
                Divider(),
                Text(
                  'Was anderes',
                ),
                Divider(),
                InfoCard(
                  color: Colors.amber,
                  text: 'Coole Info Karte',
                ),
                InfoCard(
                  color: Colors.green,
                  text: 'Nicht so coole Info Karte',
                ),
                InfoCard(
                  color: Colors.green,
                  text: 'Nicht so coole Info Karte',
                ),
                InfoCard(
                  color: Colors.green,
                  text: 'Nicht so coole Info Karte',
                ),
                InfoCard(
                  color: Colors.green,
                  text: 'Nicht so coole Info Karte',
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text('Mein Button'),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({required this.color, required this.text, super.key});
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12, left: 16, right: 16),
      padding: EdgeInsets.all(16),
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(text, style: TextStyle(fontSize: 24)),
    );
  }
}
