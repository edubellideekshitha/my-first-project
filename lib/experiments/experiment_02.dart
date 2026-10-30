import 'package:flutter/material.dart';

class Experiment02Page extends StatelessWidget {
  const Experiment02Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experiment 2 – Widgets')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Text Widget', style: TextStyle(fontSize: 24)),
          const SizedBox(height: 12),
          Image.network(
            'https://picsum.photos/600/180',
            height: 140,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) =>
                const SizedBox(height: 100, child: Icon(Icons.image, size: 60)),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(18),
            color: Colors.blue.shade100,
            child: const Text('Container Widget'),
          ),
          const SizedBox(height: 18),
          const Text('Row Widget'),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.home), Icon(Icons.star), Icon(Icons.person)],
          ),
          const SizedBox(height: 18),
          const Text('Column Widget'),
          const Column(children: [Text('First item'), Text('Second item')]),
          const SizedBox(height: 18),
          const Text('Stack Widget'),
          Stack(alignment: Alignment.center, children: [
            Container(width: 220, height: 90, color: Colors.orange),
            const Text('Text placed over a container'),
          ]),
        ],
      ),
    );
  }
}
