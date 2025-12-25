import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}