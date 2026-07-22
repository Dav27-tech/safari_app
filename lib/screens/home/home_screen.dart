import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/destinations.dart';
import '../../widgets/app_bottom_navigation_bar.dart';
import '../../widgets/custom_header.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/category_chip.dart';
import '../../widgets/destination_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  final List<String> categories = [
    "Toutes",
    "Plages",
    "Montagnes",
    "Villes",
    "Nature",
    "Culture",
  ];

  String selectedCategory = "Toutes";

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredDestinations = destinations.where((destination) {
      final matchesSearch = destination.name
          .toLowerCase()
          .contains(searchController.text.toLowerCase());

      final matchesCategory =
          selectedCategory == "Toutes" ||
              destination.category == selectedCategory;

      return matchesSearch && matchesCategory;
    }).toList();

    return Scaffold(
      drawer: const Drawer(),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Column(
            children: [

              /// Header
              const CustomHeader(),

              const SizedBox(height: 20),

              /// Recherche
              SearchBarW(
                controller: searchController,
                onChanged: (_) {
                  setState(() {});
                },
              ),

              const SizedBox(height: 20),

              /// Catégories
              SizedBox(
                height: 42,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  separatorBuilder: (_, __) =>
                  const SizedBox(width: 8),
                  itemBuilder: (context, index) {
                    return CategoryChip(
                      label: categories[index],
                      selected:
                      selectedCategory == categories[index],
                      onTap: () {
                        setState(() {
                          selectedCategory = categories[index];
                        });
                      },
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              /// Destinations
              Expanded(
                child: GridView.builder(
                  itemCount: filteredDestinations.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: .65,
                  ),
                  itemBuilder: (context, index) {
                    final destination =
                    filteredDestinations[index];

                    return DestinationCard(
                      destination: destination,
                      onTap: () {
                        context.push(
                          "/details",
                          extra: destination,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar:const AppBottomNavigationBar(
        currentIndex: 0,
      )
    );
  }
}