// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white70, width: 1),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/profile_picture.png'),
            ),
            SizedBox(height: 16),
            Text(
              'Sum Somony',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'sum_somony@portfolio:~\$ whoami',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: Colors.yellow),
            ),
            SizedBox(height: 16),
            // Description with highlighted link
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                children: [
                  TextSpan(
                    text:
                        "Currently a Telecom & Network Engineering student—which is a fancy way of saying I spend 40 hours a week staring at green lights on a switch and wondering why my ping is so high.",
                  ),
                  TextSpan(text: "I’m an easy-going guy who lives for"),
                  TextSpan(
                    text: " 0% packet loss ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        "and a perfectly crimped CAT6 cable. When I'm not accidentally crashing my own virtual local network, I'm probably figuring out how to route my way to the nearest coffee shop. Still a student, but I've already mastered the most important engineering skill: ",
                  ),
                  TextSpan(
                    text: "Turning it off and back on again.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),

            _buildIconText(Icons.pin_drop, "Phnom_Penh/Cambodia", context),

            SizedBox(height: 34),
          ],
        ),
      ),
    );
  }
}

Widget _buildIconText(IconData icon, String text, BuildContext context) {
  return Row(
    children: [
      Icon(icon, color: Colors.grey, size: 22),
      SizedBox(width: 12),
      Text(
        text,
        style: Theme.of(context).textTheme.displayMedium?.copyWith(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
