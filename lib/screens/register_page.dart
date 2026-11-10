import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Clé du formulaire
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  // Libérer les ressources
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inscription'), centerTitle: true),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),

        child: Form(
          key: _formKey,

          child: Column(
            children: [
              // 1. Nom complet
              TextFormField(
                controller: _nameController,

                decoration: const InputDecoration(
                  labelText: 'Nom complet',
                  hintText: 'Votre nom complet',
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nom complet obligatoire';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              // 2. Email
              TextFormField(
                controller: _emailController,
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

              // 3. Mot de passe
              TextFormField(
                controller: _passwordController,
                obscureText: true,

                decoration: const InputDecoration(
                  labelText: 'Mot de passe',
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

              const SizedBox(height: 20),

              // 4. Confirmation du mot de passe
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,

                decoration: const InputDecoration(
                  labelText: 'Confirmer le mot de passe',
                  prefixIcon: Icon(Icons.lock_reset),
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Confirmez votre mot de passe';
                  }

                  if (value != _passwordController.text) {
                    return 'Les mots de passe ne correspondent pas';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 25),

              // Bouton Créer mon compte
              SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Formulaire valide — compte non créé'),
                        ),
                      );
                    }
                  },

                  child: const Text('Créer mon compte'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
