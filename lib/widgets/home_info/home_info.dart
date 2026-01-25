// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TypewriterText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final TextAlign textAlign;
  final Duration typingSpeed;

  const TypewriterText({
    super.key,
    required this.text,
    this.style,
    required this.textAlign,
    this.typingSpeed = const Duration(milliseconds: 50),
  });

  @override
  State<TypewriterText> createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _textAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(
        milliseconds: widget.text.length * widget.typingSpeed.inMilliseconds,
      ),
      vsync: this,
    );

    _textAnimation = IntTween(
      begin: 0,
      end: widget.text.length,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _textAnimation,
      builder: (context, child) {
        final currentText = widget.text.substring(0, _textAnimation.value);
        return Text(
          currentText,
          style: widget.style,
          textAlign: widget.textAlign,
        );
      },
    );
  }
}

class HomeInfo extends StatelessWidget {
  const HomeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleFontSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 50
                : 80;
        double descriptionFontSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 18;

      return SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(46, 0, 0, 0),
                child: Text(
                  "Welcome to",
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: textAlignment,
                ),
              ),
            Text(
                'My Portfolio',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: textAlignment,
              ),
            SizedBox(height: 20),
              TypewriterText(
                text:
                    'This is a brief introduction about myself. I am passionate about Flutter development and love creating beautiful and functional applications.',
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: textAlignment,
                typingSpeed: const Duration(milliseconds: 40),
            ),
          ],
        ),
      );
      },
    );
  }
}