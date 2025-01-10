import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  final List<String> names = ['Max', 'David', 'Torsten', 'Jessi', 'Theo'];

  @override
  Widget build(BuildContext context) {
    return Container(
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
                leading: Image.asset(
                  'assets/images/image.png',
                  height: 50,
                  width: 50,
                ),
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
    );
  }
}
