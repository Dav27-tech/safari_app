import 'package:flutter/material.dart';

import '../../controllers/theme_controller.dart';
import '../../widgets/app_bottom_navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          const SizedBox(height: 20),

          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 3,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.15),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.network(
                  "https://avatars.githubusercontent.com/u/219689204?s=400&u=e1bcae8c69abf654b4c695989f62106459a55f30&v=4",
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          Text(
            "David Amani",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),

          const SizedBox(height: 6),

          Text(
            "david@gmail.com",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),

          const SizedBox(height: 35),

          Card(
            child: Column(
              children: [

                ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text("Modifier le profil"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),

                const Divider(height: 1),

                ListTile(
                  leading: Icon(
                    Icons.notifications_none,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text("Notifications"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),

                const Divider(height: 1),

                ListTile(
                  leading: Icon(
                    Icons.language,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text("Langue"),
                  trailing: const Text("Français"),
                ),

                const Divider(height: 1),

                ValueListenableBuilder(
                  valueListenable: ThemeController.themeMode,

                  builder: (context, mode, child) {

                    return SwitchListTile(

                      secondary: Icon(Icons.dark_mode,
                      color: Theme.of(context).colorScheme.primary,),

                      title: const Text("Mode sombre"),

                      value: mode == ThemeMode.dark,

                      onChanged: (value) {
                        ThemeController.toggleTheme(value);
                      },
                    );
                  },
                ),

                const Divider(height: 1),

                ListTile(
                  leading: Icon(
                      Icons.info_outline,
                      color: Theme.of(context).colorScheme.primary
                  ),
                  title: const Text("À propos"),
                  subtitle: const Text("Safari v1.0"),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: const AppBottomNavigationBar(
        currentIndex: 3,
      ),
    );
  }
}