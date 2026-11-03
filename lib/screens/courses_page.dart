import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mes cours')),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),

        children: [
          Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text('Développement Multi-Plateforme'),
              subtitle: const Text('Enseignant : Mme Aouraghe'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Module sélectionné : Développement Multi-Plateforme',
                    ),
                  ),
                );
              },
            ),
          ),

          Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(Icons.storage),
              title: const Text('Bases de données avancées'),
              subtitle: const Text('Volume horaire : 40 heures'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Module sélectionné : Bases de données avancées',
                    ),
                  ),
                );
              },
            ),
          ),

          Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(Icons.security),
              title: const Text('Sécurité informatique'),
              subtitle: const Text('Enseignant : M. El Amrani'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Module sélectionné : Sécurité informatique'),
                  ),
                );
              },
            ),
          ),

          Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(Icons.computer),
              title: const Text('Développement Web'),
              subtitle: const Text('Volume horaire : 36 heures'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Module sélectionné : Développement Web'),
                  ),
                );
              },
            ),
          ),

          Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(Icons.psychology),
              title: const Text('Intelligence Artificielle'),
              subtitle: const Text('Enseignant : Mme Benali'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Module sélectionné : Intelligence Artificielle',
                    ),
                  ),
                );
              },
            ),
          ),

          Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(Icons.network_check),
              title: const Text('Administration des réseaux informatiques'),
              subtitle: const Text('Volume horaire : 42 heures'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Module sélectionné : Administration des réseaux informatiques',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
