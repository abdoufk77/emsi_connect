import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Formulaire
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Visibilité du mot de passe
  bool _showPassword = false;

  // Libérer les ressources
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

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

              // Champ Mot de passe
              TextFormField(
                controller: _passwordController,
                obscureText: !_showPassword,

                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  hintText: 'Entrez votre mot de passe',
                  prefixIcon: const Icon(Icons.lock_outline),
                  border: const OutlineInputBorder(),

                  suffixIcon: IconButton(
                    icon: Icon(
                      _showPassword ? Icons.visibility_off : Icons.visibility,
                    ),

                    onPressed: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),
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

              // Bouton Vérifier
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Récupérer l'email
                    final email = _emailController.text.trim();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('$email : saisie valide')),
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
