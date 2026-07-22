import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../models/destination.dart';
import '../../widgets/info_badge.dart';

class DetailScreen extends StatelessWidget {
  final Destination destination;

  const DetailScreen({
    super.key,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            expandedHeight: 320,
            pinned: true,
            leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  destination.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border,
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                destination.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    destination.name,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    destination.country,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [

                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),

                      const SizedBox(width: 5),

                      Text(destination.rating.toString()),

                      const Spacer(),

                      Text(
                        "${destination.price.toStringAsFixed(0)} ${destination.currency}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Theme.of(context)
                              .colorScheme
                              .primary,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: const [

                      InfoBadge(
                        icon: Icons.hotel,
                        label: "Hôtel",
                      ),

                      InfoBadge(
                        icon: Icons.flight,
                        label: "Vol inclus",
                      ),

                      InfoBadge(
                        icon: Icons.restaurant,
                        label: "Restaurant",
                      ),

                      InfoBadge(
                        icon: Icons.map,
                        label: "Guide",
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  Text(
                    "Description",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge,
                  ),

                  const SizedBox(height: 10),

                  Text(destination.description),

                  const SizedBox(height: 30),

                  Text(
                    "Informations",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge,
                  ),

                  const SizedBox(height: 15),

                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        children: [

                          ListTile(
                            leading: const Icon(Icons.calendar_month),
                            title: const Text("Meilleure saison"),
                            trailing:
                            Text(destination.bestSeason),
                          ),

                          ListTile(
                            leading: const Icon(Icons.thermostat),
                            title: const Text("Température"),
                            trailing:
                            Text("${destination.temperature}°C"),
                          ),

                          ListTile(
                            leading: const Icon(Icons.language),
                            title: const Text("Langue"),
                            trailing:
                            Text(destination.language),
                          ),

                          ListTile(
                            leading: const Icon(Icons.payments),
                            title: const Text("Monnaie"),
                            trailing:
                            Text(destination.currency),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  Row(
                    children: [

                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                          label: const Text("Favoris"),
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.flight_takeoff),
                          label: const Text("Réserver"),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}