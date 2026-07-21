import 'package:flutter/material.dart';

class SearchBarW extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const SearchBarW({
    super.key,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: const InputDecoration(
        hintText: "Rechercher une destination...",
        prefixIcon: Icon(Icons.search_rounded),
      ),
    );
  }
}