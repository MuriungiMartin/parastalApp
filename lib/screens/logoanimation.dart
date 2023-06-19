import 'package:flutter/material.dart';

class ImageAnimationExample extends StatefulWidget {
  @override
  _ImageAnimationExampleState createState() => _ImageAnimationExampleState();
}

class _ImageAnimationExampleState extends State<ImageAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bytelink.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(_animation.value * 100),
          ),
        ),
      ),
    );
  }
}
