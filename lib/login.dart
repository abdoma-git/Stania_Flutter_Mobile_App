import 'package:flutter/material.dart';
import 'home.dart'; // Import de la page d'accueil

class LoginPage extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Champ de texte pour l'email
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            // Champ de texte pour le mot de passe
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Mot de passe',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            // Bouton de connexion
            ElevatedButton(
              onPressed: () {
                // Simple validation des champs (ajouter une vraie logique de validation si nécessaire)
                if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                  // Naviguer vers la page d'accueil
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                } else {
                  // Affiche une erreur si les champs sont vides
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Veuillez remplir tous les champs')),
                  );
                }
              },
              child: const Text('Connexion'),
            ),
          ],
        ),
      ),
    );
  }
}
