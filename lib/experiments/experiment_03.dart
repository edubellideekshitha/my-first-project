import 'package:flutter/material.dart';

class Experiment03Page extends StatelessWidget {
  const Experiment03Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experiment 3 – Responsive UI')),
      body: LayoutBuilder(builder: (context, constraints) {
        final isWide = constraints.maxWidth >= 600;
        final cards = const [
          ResponsiveCard(title: 'First panel'),
          ResponsiveCard(title: 'Second panel'),
        ];
        return Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: isWide
                ? Row(children: cards.map((card) => Expanded(child: card)).toList())
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: cards,
                  ),
          ),
        );
      }),
    );
  }
}

class ResponsiveCard extends StatelessWidget {
  final String title;
  const ResponsiveCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) => Card(
        margin: const EdgeInsets.all(12),
        child: SizedBox(
          height: 130,
          child: Center(
            child: Text(title, style: const TextStyle(fontSize: 22)),
          ),
        ),
      );
}
