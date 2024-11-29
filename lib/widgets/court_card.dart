import 'package:flutter/material.dart';
import '../models/player.dart';

class CourtCard extends StatelessWidget {
  final int courtNumber;
  final List<Player> players;

  const CourtCard({super.key, required this.courtNumber, required this.players});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Court $courtNumber",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: players.length,
                itemBuilder: (context, index) {
                  final player = players[index];
                 return Text(players[index].name);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
