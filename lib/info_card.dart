import 'package:flutter/material.dart';

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
