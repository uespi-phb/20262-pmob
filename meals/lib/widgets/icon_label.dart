import 'package:flutter/material.dart';

class IconLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? labelColor;

  const new({
    super.key,
    required this.icon,
    required this.label,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 6.0),
        Text(label, style: TextStyle(color: labelColor)),
      ],
    );
  }
}
