import 'package:flutter/material.dart';
import 'package:webcv/views/about/about_card.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          color: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
          alignment: Alignment.center,
          child: AboutCard(),
        ),
      ],
    );
  }
}
