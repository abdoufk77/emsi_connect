import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  final List<Map<String, dynamic>> modules = const [
    {
      'nom': 'Développement Multi-Plateforme',
      'info': 'Enseignant : Mme Aouraghe',
      'icon': Icons.menu_book,
    },
    {
      'nom': 'Bases de données avancées',
      'info': 'Volume horaire : 40 heures',
      'icon': Icons.storage,
    },
    {
      'nom': 'Sécurité informatique',
      'info': 'Enseignant : M. El Amrani',
      'icon': Icons.security,
    },
    {
      'nom': 'Développement Web',
      'info': 'Volume horaire : 36 heures',
      'icon': Icons.computer,
    },
    {
      'nom': 'Intelligence Artificielle',
      'info': 'Enseignant : Mme Benali',
      'icon': Icons.psychology,
    },
    {
      'nom': 'Administration des réseaux informatiques',
      'info': 'Volume horaire : 42 heures',
      'icon': Icons.network_check,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mes cours')),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),

        itemCount: modules.length,

        itemBuilder: (context, index) {
          final module = modules[index];

          return Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),

            child: ListTile(
              leading: Icon(module['icon']),

              title: Text(
                module['nom'],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),

              subtitle: Text(module['info']),

              trailing: const Icon(Icons.chevron_right),

              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Module sélectionné : ${module['nom']}'),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
