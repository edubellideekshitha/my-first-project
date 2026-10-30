import 'package:flutter/material.dart';
import 'experiments/experiment_01.dart';
import 'experiments/experiment_02.dart';
import 'experiments/experiment_03.dart';
import 'experiments/experiment_04.dart';
import 'experiments/experiment_05.dart';
import 'experiments/experiment_06.dart';
import 'experiments/experiment_07.dart';
import 'experiments/experiment_08.dart';
import 'experiments/experiment_09.dart';

void main() => runApp(const FlutterLabApp());

class FlutterLabApp extends StatelessWidget {
  const FlutterLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CS506PC Flutter Lab',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const LabHomePage(),
    );
  }
}

class LabHomePage extends StatelessWidget {
  const LabHomePage({super.key});

  static const experiments = <(String, Widget)>[
    ('1. Dart language basics', Experiment01Page()),
    ('2. Flutter widgets and layouts', Experiment02Page()),
    ('3. Responsive UI', Experiment03Page()),
    ('4. Navigation and named routes', Experiment04Page()),
    ('5. State management using Provider', Experiment05Page()),
    ('6. Custom widgets and themes', Experiment06Page()),
    ('7. Form validation', Experiment07Page()),
    ('8. Fade and slide animations', Experiment08Page()),
    ('9. REST API data fetching', Experiment09Page()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CS506PC – Flutter Lab')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'UI Design – Flutter Practical Experiments',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text('Select an experiment to open its working demonstration.'),
          const SizedBox(height: 12),
          ...experiments.map((item) => Card(
                child: ListTile(
                  title: Text(item.$1),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => item.$2),
                  ),
                ),
              )),
          Card(
            child: ListTile(
              title: const Text('10. Unit testing and debugging'),
              subtitle: const Text('Run this experiment with: flutter test'),
              leading: const Icon(Icons.check_circle_outline),
            ),
          ),
        ],
      ),
    );
  }
}
