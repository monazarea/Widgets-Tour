import 'package:flutter/material.dart';

class AlignTransitionDemo extends StatefulWidget {
  const AlignTransitionDemo({super.key});

  @override
  State<AlignTransitionDemo> createState() => _AlignTransitionDemoState();
}

class _AlignTransitionDemoState extends State<AlignTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _animation = AlignmentTween(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlignTransition(
      alignment: _animation,
      child: Container(width: 50, height: 50, color: Colors.blue),
    );
  }
}
