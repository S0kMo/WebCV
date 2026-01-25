import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class HorizontalMarquee extends StatefulWidget {
  final Widget child;
  final double scrollAxisWidth;
  final Duration animationDuration;
  final Duration backDuration;
  final Duration pauseDuration;

  const HorizontalMarquee({
    super.key,
    required this.child,
    required this.scrollAxisWidth,
    this.animationDuration = const Duration(milliseconds: 3000),
    this.backDuration = const Duration(milliseconds: 3000),
    this.pauseDuration = const Duration(milliseconds: 800),
  });

  @override
  _HorizontalMarqueeState createState() => _HorizontalMarqueeState();
}

class _HorizontalMarqueeState extends State<HorizontalMarquee>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.animationDuration + widget.pauseDuration,
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(-1.0, 0.0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Reset to beginning for endless loop
        _controller.reset();
        Future.delayed(widget.pauseDuration, () {
          _controller.forward();
        });
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.scrollAxisWidth,
      height: 40, // Fixed height for skill boxes
      child: ClipRect(
        child: SlideTransition(position: _animation, child: widget.child),
      ),
    );
  }
}
