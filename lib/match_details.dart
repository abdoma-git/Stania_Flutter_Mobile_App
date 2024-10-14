import 'package:flutter/material.dart';

class MatchDetailsPage extends StatelessWidget {
  final Map<String, dynamic> match;  // Pass the match data to this page

  const MatchDetailsPage({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 32, 48, 226),
        title: const Text(
          "Détails du Match",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${match['team1']} vs ${match['team2']}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 10),
            Text("Date de début: ${match['heure_debut']}", style: TextStyle(fontSize: 16)),
            Text("Date de fin: ${match['heure_fin']}", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text("Statut: ${match['status']}", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text(
              "Score: ${match['score1']} - ${match['score2']}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Add more details if needed, such as weather, odds, etc.
            Text("Météo: ${match['meteo']}", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text("Cote 1: ${match['cote1']}", style: TextStyle(fontSize: 16)),
            Text("Cote 2: ${match['cote2']}", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
