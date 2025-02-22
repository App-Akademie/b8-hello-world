import 'package:flutter/material.dart';
import 'package:hello_world/home/widgets/info_bottom_sheet.dart';

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
        padding: EdgeInsets.all(12),
        children: [
          if (names.isEmpty) Text('Liste ist leer'),
          for (final name in names) ListTile(title: Text(name)),
          Image.asset('assets/images/image.png'),
          GestureDetector(
            onTap: () {
              print('Auf image getapped');
            },
            child: Container(
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
          ),
          SizedBox(
            height: 32,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text('Meine Karte'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Meine Snackbar'),
                              action: SnackBarAction(
                                  label: 'Ok',
                                  onPressed: () {
                                    print('Snackbar OK wurde gedrückt');
                                  }),
                            ),
                          );
                        },
                        child: Text('Ok'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Builder(builder: (context) {
            return TextButton(
              onPressed: () {
                showBottomSheet(
                  context: context,
                  builder: (context) => InfoBottomSheet(),
                );
              },
              child: Text('Show BottomSheet'),
            );
          }),
          FilledButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text('Willst du deinen Account wirklich löschen?'),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Abbrechen'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Ok'),
                    ),
                  ],
                ),
              );
            },
            child: Text('Mein Button'),
          ),
          SizedBox(
            height: 62,
          ),
        ],
      ),
    );
  }
}
