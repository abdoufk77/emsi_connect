import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Clé permettant d'accéder au formulaire
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Connexion'), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Form(
          key: _formKey,

          child: Column(
            children: [
              // Champ Email
              TextFormField(
                keyboardType: TextInputType.emailAddress,

                decoration: const InputDecoration(
                  labelText: 'Adresse email',
                  hintText: 'exemple@emsi.ma',
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  final email = (value ?? '').trim();

                  if (email.isEmpty) {
                    return 'Email obligatoire';
                  }

                  if (!email.contains('@')) {
                    return 'Email invalide';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              // Champ Mot de passe
              TextFormField(
                obscureText: true,

                decoration: const InputDecoration(
                  labelText: 'Mot de passe',
                  hintText: 'Entrez votre mot de passe',
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mot de passe obligatoire';
                  }

                  if (value.length < 8) {
                    return 'Au moins 8 caractères';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 25),

              // Bouton de validation
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Saisie valide (test local)'),
                      ),
                    );
                  }
                },

                child: const Text('Vérifier la saisie'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
