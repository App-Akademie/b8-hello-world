import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  static const List<String> images = [
    'https://images.unsplash.com/photo-1477601263568-180e2c6d046e?q=80&w=3000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1457269449834-928af64c684d?q=80&w=3093&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1420585269105-d908ec316eb3?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1670098277032-cc59e6cdb51b?q=80&w=2971&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1516035645781-9f126e774e9e?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        for (int i = 0; i < images.length; i++)
          TappableImage(i: i, images: images),
        for (final image in images)
          Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ...images.map(
          (e) => Image.network(
            e,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

class TappableImage extends StatefulWidget {
  const TappableImage({
    super.key,
    required this.i,
    required this.images,
  });

  final int i;
  final List<String> images;

  @override
  State<TappableImage> createState() => _TappableImageState();
}

class _TappableImageState extends State<TappableImage> {
  bool showOverlay = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Auf ${widget.i + 1}. image getapped');
        setState(() {
          showOverlay = !showOverlay;
        });
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            widget.images[widget.i],
            fit: BoxFit.cover,
          ),
          if (showOverlay)
            Container(
              color: Colors.black.withAlpha(120),
            ),
          if (showOverlay)
            Positioned(
              bottom: 10,
              right: 20,
              child: Text(
                '${widget.i + 1}',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
        ],
      ),
    );
  }
}
