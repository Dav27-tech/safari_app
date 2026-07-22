import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      height: 75,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,

      onDestinationSelected: (index) {
        switch (index) {
          case 0:
            context.go('/home');
            break;

          case 1:
            context.go('/favorites');
            break;

          case 2:
            context.go('/add');
            break;

          case 3:
            context.go('/profile');
            break;
        }
      },

      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.explore_outlined),
          selectedIcon: Icon(Icons.explore),
          label: "Explorer",
        ),

        NavigationDestination(
          icon: Icon(Icons.favorite_border),
          selectedIcon: Icon(Icons.favorite),
          label: "Favoris",
        ),

        NavigationDestination(
          icon: Icon(Icons.add_circle_outline),
          selectedIcon: Icon(Icons.add_circle),
          label: "Ajouter",
        ),

        NavigationDestination(
          icon: Icon(Icons.person_outline),
          selectedIcon: Icon(Icons.person),
          label: "Profil",
        ),
      ],
    );
  }
}