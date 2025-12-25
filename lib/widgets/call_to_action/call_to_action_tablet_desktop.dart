import 'package:flutter/material.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;
  final double topPadding = 130;
  const CallToActionTabletDesktop({super.key, this.title = ''});

  @override
  Widget build(BuildContext context) {
    //glows applied to the button border
    final topRight = BoxShadow(
      color: Colors.white.withOpacity(0.18),
      blurRadius: 20,
      spreadRadius: 1.6,
      offset: const Offset(10, -10),
    );

    final bottomLeft = BoxShadow(
      color: Colors.white.withOpacity(0.13),
      blurRadius: 16,
      spreadRadius: 1.0,
      offset: const Offset(-8, 8),
    );

    return Container(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: topPadding)),
          Image.asset('assets/tree_gif2.gif'),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              //implement action (open contact form / send message)
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.55),
                borderRadius: BorderRadius.circular(28),
                border: Border.all(
                  color: Colors.white.withOpacity(0.95),
                  width: 1.8,
                ),
                boxShadow: [
                  topRight,
                  bottomLeft,
                  const BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.6,
                  shadows: [
                    Shadow(
                      color: Color.fromRGBO(255, 255, 255, 0.28),
                      blurRadius: 6,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}