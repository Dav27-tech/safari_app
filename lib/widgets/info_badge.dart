import 'package:flutter/material.dart';

class InfoBadge extends StatelessWidget {
  final IconData icon;
  final String label;

  const InfoBadge({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(
        icon,
        size: 18,
      ),
      label: Text(label),
    );
  }
}