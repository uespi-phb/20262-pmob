import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String data;

  const InfoCard({required this.icon, required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsGeometry.symmetric(horizontal: 30.0, vertical: 4),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular((4)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal),
          SizedBox(width: 16),
          Text(
            data,
            style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
