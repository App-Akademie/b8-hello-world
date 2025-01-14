import 'package:flutter/material.dart';

class InfoBottomSheet extends StatelessWidget {
  const InfoBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.info,
              size: 42,
            ),
            SizedBox(
              height: 12,
            ),
            Text('Mein Bottom Sheet'),
          ],
        ),
      ),
    );
  }
}
