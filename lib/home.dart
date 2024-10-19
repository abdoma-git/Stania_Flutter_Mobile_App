import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'match_details.dart';  // Import the new page

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeageState();
}

class _HomeageState extends State<HomePage> {
  List<dynamic> _matches = [];  // List to store the matches data
  bool _isLoading = true;  // To track the loading state

  // Function to fetch data from the server
  Future fetchMatches() async {
    try {
      var url = "https://abdou.website/bet-website/getData.php";  // Replace with your server URL
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);  // Decode the JSON response
        setState(() {
          _matches = data;  // Store the fetched matches in the list
          _isLoading = false;  // Data is fetched, stop showing the loading indicator
        });
      } else {
        print('Failed to load matches');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchMatches();  // Fetch data when the page loads
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 32, 48, 226),
        title: const Text(
          "STANIA - Liste des Matchs",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())  // Show loading indicator while data is being fetched
          : ListView.builder(
              itemCount: _matches.length,
              itemBuilder: (context, index) {
                final match = _matches[index];
                final isOngoing = match['status'] != 'En cours';

                return GestureDetector(
                  onTap: () {
                    if (isOngoing) {
                      // Navigate to the MatchDetailsPage if the match is not ongoing
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MatchDetailsPage(match: match),
                        ),
                      );
                    }
                  },
                  child: Card(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    color: isOngoing ? Colors.white : Colors.grey[400],  // Grey if not ongoing
                    child: ListTile(
                      title: Text(
                        "${match['team1']} vs ${match['team2']}",  // Show teams
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (!isOngoing)
                            Text("Score: ${match['score1']} - ${match['score2']}"),  // Show scores only if not ongoing
                            Text("Date de début: ${match['heure_debut']}"),
                            Text("Date de fin: ${match['heure_fin']}"),
                            Text("Statut: ${match['status']}"),
                            
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
