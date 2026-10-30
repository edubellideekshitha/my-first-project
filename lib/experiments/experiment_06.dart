import 'package:flutter/material.dart';

class Experiment06Page extends StatelessWidget {
  const Experiment06Page({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Experiment 6 – Custom Theme')),
        body: const Center(
          child: ProfileCard(
            name: 'Flutter Student',
            course: 'B.Tech Computer Science',
          ),
        ),
      );
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String course;

  const ProfileCard({super.key, required this.name, required this.course});

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            const CircleAvatar(radius: 35, child: Icon(Icons.person, size: 35)),
            const SizedBox(height: 12),
            Text(name, style: Theme.of(context).textTheme.titleLarge),
            Text(course),
          ]),
        ),
      );
}
