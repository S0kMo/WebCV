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
        padding: EdgeInsets.fromLTRB(16, 16, 8, 0),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white70, width: 1),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 16),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/profile2x.png'),
                ),
                _buildAvatarTextSpacing(context),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Responsive name display for mobile and desktop
                    _buildNameText(context),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: _buildTerminalText(context),
            ),
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
                        "Currently a Telecommunications & Network Engineering student—which is a fancy way of saying I spend 40 hours a week staring at green lights on a switch and wondering why my ping is so high.",
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
            SizedBox(height: 14),
            Text(
              'Languages',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            _buildIconText(Icons.language, "Khmer    / Mother Tongue", context),
            SizedBox(height: 12),
            _buildIconText(Icons.language, "English / Good", context),
            SizedBox(height: 12),
            _buildIconText(Icons.language, "French / Basic", context),

            SizedBox(height: 38),
          ],
        ),
      ),
    );
  }

  // Responsive terminal text method
  Widget _buildTerminalText(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 768;

    return Text(
      'sum_somony@portfolio:~\$ whoami',
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
        color: Colors.yellow,
        fontSize: isMobile
            ? 14
            : 16, // Smaller font for mobile to fit single line
      ),
    );
  }

  // Responsive spacing between avatar and text
  Widget _buildAvatarTextSpacing(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 768;

    if (isMobile) {
      // Mobile layout: Smaller spacing
      return SizedBox(width: 24);
    } else {
      // Desktop layout: Original spacing
      return SizedBox(width: 56);
    }
  }

  // Responsive name display method
  Widget _buildNameText(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 768;

    if (isMobile) {
      // Mobile layout
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Sum Somony',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 28, // Smaller font for mobile
            ),
          ),
        ],
      );
    } else {
      // Desktop layout
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sum ',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Somony',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }
  }
}

Widget _buildIconText(IconData icon, String text, BuildContext context) {
  return Row(
    children: [
      Icon(icon, color: Colors.grey, size: 22),
      SizedBox(width: 16),
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
