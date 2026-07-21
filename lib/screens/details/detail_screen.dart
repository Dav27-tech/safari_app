import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Detail Screen"),
      ),
    );
  }
}

class Couter extends StatefulWidget {
  const Couter({super.key});

  @override
  State<Couter> createState() => _CouterState();
}

class _CouterState extends State<Couter> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
