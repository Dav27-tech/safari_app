import 'package:go_router/go_router.dart';

import '../screens/welcome/welcome_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/details/detail_screen.dart';
import '../screens/favorites/favorites_screen.dart';
import '../screens/add_destination/add_destination_screen.dart';
import '../screens/profile/profile_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/favorites',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const WelcomeScreen()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/details',
      builder: (context, state) => const DetailScreen(),
    ),

    GoRoute(
      path: '/favorites',
      builder: (context, state) => const FavoritesScreen(),
    ),

    GoRoute(
      path: '/add',
      builder: (context, state) => const AddDestinationScreen(),
    ),

    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);
