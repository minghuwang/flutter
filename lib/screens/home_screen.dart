import 'package:flutter/material.dart';
import '../models/player.dart';
import '../widgets/court_card.dart';

class HomeScreen extends StatelessWidget {
  final List<List<Player>> courts = [
    [
      Player(oid: 1,
          name: "Alice",
          skillLevel: 5,
          isMember: true,
          gender: "Female"),
      Player(oid: 1,
          name: "Bob",
          skillLevel: 4,
          isMember: false,
          gender: "Male"),
      Player(oid: 1,
          name: "Charlie",
          skillLevel: 5,
          isMember: true,
          gender: "Male"),
      Player(oid: 1,
          name: "Diana",
          skillLevel: 4,
          isMember: false,
          gender: "Female"),
    ],
    [
      Player(oid: 1,
          name: "Eve",
          skillLevel: 6,
          isMember: true,
          gender: "Female"),
      Player(oid: 1,
          name: "Frank",
          skillLevel: 6,
          isMember: false,
          gender: "Male"),
      Player(oid: 1,
          name: "Grace",
          skillLevel: 6,
          isMember: true,
          gender: "Female"),
      Player(oid: 1,
          name: "Hank",
          skillLevel: 6,
          isMember: false,
          gender: "Male"),
    ],
    [
      Player(oid: 1,
          name: "Eve",
          skillLevel: 6,
          isMember: true,
          gender: "Female"),
      Player(oid: 1,
          name: "Frank",
          skillLevel: 6,
          isMember: false,
          gender: "Male"),
      Player(oid: 1,
          name: "Grace",
          skillLevel: 6,
          isMember: true,
          gender: "Female"),
      Player(oid: 1,
          name: "Hank",
          skillLevel: 6,
          isMember: false,
          gender: "Male"),
    ],
    [
      Player(oid: 1,
          name: "Eve",
          skillLevel: 6,
          isMember: true,
          gender: "Female"),
      Player(oid: 1,
          name: "Frank",
          skillLevel: 6,
          isMember: false,
          gender: "Male"),
      Player(oid: 1,
          name: "Grace",
          skillLevel: 6,
          isMember: true,
          gender: "Female"),
      Player(oid: 1,
          name: "Hank",
          skillLevel: 6,
          isMember: false,
          gender: "Male"),
    ],
    // Add more courts with players...
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Badminton Scheduler"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Number of columns
            childAspectRatio: 1.8, // Adjust the aspect ratio for card size
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: courts.length,
          itemBuilder: (context, index) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery
                    .of(context)
                    .size
                    .height / 4,
              ),
              child: CourtCard(
                courtNumber: index + 1,
                players: courts[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
