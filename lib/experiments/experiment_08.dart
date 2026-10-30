import 'package:flutter/material.dart';

class Experiment08Page extends StatefulWidget {
  const Experiment08Page({super.key});

  @override
  State<Experiment08Page> createState() => _Experiment08PageState();
}

class _Experiment08PageState extends State<Experiment08Page>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fade;
  late final Animation<Offset> _slide;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _slide = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Experiment 8 – Animation')),
        body: Center(
          child: FadeTransition(
            opacity: _fade,
            child: SlideTransition(
              position: _slide,
              child: const FlutterLogo(size: 130),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _controller.forward(from: 0),
          child: const Icon(Icons.play_arrow),
        ),
      );
}
