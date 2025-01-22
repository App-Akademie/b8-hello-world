import 'package:flutter/material.dart';

import 'package:hello_world/gallery/about_me_page.dart';
import 'package:hello_world/gallery/gallery_page.dart';
import 'package:hello_world/main.dart';

class GalleryApp extends StatefulWidget {
  const GalleryApp(
      {required this.onThemeChange, required this.useDarkmode, super.key});
  final void Function() onThemeChange;
  final bool useDarkmode;

  @override
  State<GalleryApp> createState() => _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        actions: [
          IconButton(
            onPressed: () {
              widget.onThemeChange();
            },
            icon: Icon(widget.useDarkmode ? Icons.light_mode : Icons.dark_mode),
          ),
        ],
      ),
      body: [
        GalleryPage(),
        AboutMePage(),
      ][activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.browse_gallery_outlined,
            ),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            label: 'Über mich',
          ),
        ],
      ),
    );
  }
}
