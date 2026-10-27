import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget rubrique(IconData icone, String titre) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.green.shade50,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(icone, size: 40, color: Colors.green),
            const SizedBox(height: 8),
            Text(
              titre,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EMSI Connect"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => debugPrint("Notifications consultées"),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo-vert.jpg',
                height: 160,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 20),

              const Text(
                'Bienvenue sur EMSI Connect',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),

              const Text(
                'Votre espace universitaire pour accéder à vos cours, '
                'votre planning et vos informations personnelles.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              Row(
                children: [
                  rubrique(Icons.menu_book, 'Mes cours'),
                  rubrique(Icons.calendar_month, 'Planning'),
                ],
              ),

              Row(
                children: [
                  rubrique(Icons.person, 'Mon profil'),
                  rubrique(Icons.task_alt, 'Mes tâches'),
                ],
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Fonctionnalité bientôt disponible');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
