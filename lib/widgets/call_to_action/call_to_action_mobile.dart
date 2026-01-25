import 'package:flutter/material.dart';
import 'package:webcv/locator.dart';
import 'package:webcv/rotuing/route_names.dart';
import 'package:webcv/services/navigation_service.dart';

class CallToActionMobile extends StatelessWidget {
  final String title;
  const CallToActionMobile({super.key, this.title = ''});

    @override
    Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(ContactRoute);
      },
      child: Container(
        height: 60,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.55),
          borderRadius: BorderRadius.circular(28),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.95),
            width: 1.8,
          ),
          boxShadow: [
            const BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 0.28),
              blurRadius: 6,
              offset: Offset(0, 0),
            ),
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
    );
  }
}
