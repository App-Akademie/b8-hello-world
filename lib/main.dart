import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<String> names = ['Max', 'David', 'Torsten', 'Jessi', 'Theo'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            endDrawer: Drawer(),
            appBar: AppBar(
              title: Text('Meine App'),
            ),
            body: ListView.separated(
              itemCount: names.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () => print('${names[index]} wurde getapped'),
                  subtitle: Text('Person'),
                  title: Text(names[index]),
                  leading: Icon(Icons.person),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        names.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
            bottomSheet: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: TextField(
                      onSubmitted: (value) {
                        if (value.isNotEmpty) {
                          setState(() {
                            names.add(value);
                          });
                        } else {
                          print('Value war leer');
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void onButtonPressed() {
  print('Button wurde gedrückt');
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 6,
            children: [
              Icon(
                Icons.info,
                size: 16,
                color: Colors.white,
              ),
              Text(
                'Info',
              ),
            ],
          ),
          Text(
            text,
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
