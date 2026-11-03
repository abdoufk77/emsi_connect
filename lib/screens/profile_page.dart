import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget information(IconData icone, String titre, String valeur) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Row(
        children: [
          Icon(icone, color: Colors.blue, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titre,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(valeur, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon profil'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Bandeau et photo de profil
              SizedBox(
                height: 150,
                child: Stack(
                  children: [
                    Container(
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('assets/images/profil.jpg'),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Titre
              const Text(
                'Informations personnelles',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 16),

              // Informations personnelles
              information(Icons.person, 'Nom', 'Soumaya rizaoui'),

              const SizedBox(height: 12),

              information(Icons.school, 'Filière', 'Informatique - SAP'),

              const SizedBox(height: 12),

              information(Icons.menu_book, 'Niveau', 'S9'),

              const SizedBox(height: 12),

              information(Icons.email, 'Email', 'soumaya@example.com'),

              const SizedBox(height: 12),

              information(
                Icons.calendar_month,
                'Année universitaire',
                '2026–2027',
              ),

              const SizedBox(height: 24),

              // Boutons d'action
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        debugPrint('Modification du profil');
                      },
                      icon: const Icon(Icons.edit),
                      label: const Text('Modifier le profil'),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        debugPrint('Contacter le profil');
                      },
                      icon: const Icon(Icons.contact_mail),
                      label: const Text('Contacter'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
