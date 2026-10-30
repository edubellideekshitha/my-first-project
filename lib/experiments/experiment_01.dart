import 'package:flutter/material.dart';

class Experiment01Page extends StatelessWidget {
  const Experiment01Page({super.key});

  @override
  Widget build(BuildContext context) {
    const studentName = 'Flutter Student';
    const age = 20;
    const percentage = 85.5;
    const passed = true;
    final numbers = List.generate(5, (index) => index + 1);

    return Scaffold(
      appBar: AppBar(title: const Text('Experiment 1 – Dart Basics')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Dart language basics',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          const Text('Name: $studentName'),
          const Text('Age: $age'),
          const Text('Percentage: $percentage'),
          const Text('Passed: $passed'),
          const SizedBox(height: 12),
          const Text('Numbers from 1 to 5:'),
          Text(numbers.join(', ')),
          const SizedBox(height: 16),
          const Text('The same logic can be run as a console program in Dart.'),
        ]),
      ),
    );
  }
}
