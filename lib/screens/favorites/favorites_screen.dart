import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../data/destinations.dart';
import '../../widgets/app_bottom_navigation_bar.dart';
import '../../widgets/destination_card.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites =
    destinations.where((d) => d.isFavorite).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes favoris"),
        centerTitle: true,
      ),

      body: favorites.isEmpty
          ? const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 80,
            ),
            SizedBox(height: 16),
            Text(
              "Aucun favori pour le moment",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      )
          : Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: favorites.length,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: .65,
          ),
          itemBuilder: (context, index) {
            return DestinationCard(
              destination: favorites[index],
              onTap: () {
                context.push(
                  "/details",
                  extra: favorites[index],
                );
              },
            );
          },
        ),
      ),

      bottomNavigationBar: const AppBottomNavigationBar(
        currentIndex: 1,
      ),
    );
  }
}