//Later Implement a better marquee widget

// import 'package:flutter/material.dart';

// class HorizontalMarquee extends StatefulWidget {
//   final Widget child;
//   final double scrollAxisWidth;
//   final Duration animationDuration;
//   final Duration backDuration;
//   final Duration pauseDuration;

//   const HorizontalMarquee({
//     super.key,
//     required this.child,
//     required this.scrollAxisWidth,
//     this.animationDuration = const Duration(milliseconds: 6000),
//     this.backDuration = const Duration(milliseconds: 6000),
//     this.pauseDuration = const Duration(milliseconds: 1200),
//   });

//   @override
//   _HorizontalMarqueeState createState() => _HorizontalMarqueeState();
// }

// class _HorizontalMarqueeState extends State<HorizontalMarquee>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<Offset> _animation;

//   @override
//   void initState() {
//     super.initState();
    
//     // Create a longer duration to account for the full content width
//     final Duration totalDuration =
//         widget.animationDuration + widget.pauseDuration;
    
//     _controller = AnimationController(
//       duration: totalDuration,
//       vsync: this,
//     );

//     // Create a tween that moves from 0 to -1 (full width) then back to 0 for seamless loop
//     _animation = Tween<Offset>(
//       begin: const Offset(0.0, 0.0),
//       end: const Offset(-1.0, 0.0),
//         ).animate(
//           CurvedAnimation(
//             parent: _controller,
//             curve: Interval(0.0, 1.0, curve: Curves.linear),
//           ),
//         );

//     _controller.addStatusListener((status) {
//       if (status == AnimationStatus.completed) {
//         // For seamless loop, immediately restart without reset
//         // This creates a continuous circular motion
//         _controller.forward(from: 0.0);
//       }
//     });

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final bool isMobile = MediaQuery.of(context).size.width < 768;
    
//     return SizedBox(
//       width: widget.scrollAxisWidth,
//       height: isMobile ? 45 : 50, // Smaller height for mobile
//       child: ClipRect(
//         child: SlideTransition(position: _animation, child: widget.child),
//       ),
//     );
//   }
// }
