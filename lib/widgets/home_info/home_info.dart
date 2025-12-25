import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
            Text(
              'Welcome to My Portfolio',
              style: TextStyle(
                fontSize: titleFontSize,
                height: 0.9,
                fontWeight: FontWeight.w800,
              ),textAlign: textAlignment,
            ),
            SizedBox(height: 20),
            Text(
              'This is a brief introduction about myself. I am passionate about Flutter development and love creating beautiful and functional applications.',
              style: TextStyle(
                fontSize: descriptionFontSize,
                height: 1.7,
              ),textAlign: textAlignment,
            ),
          ],
        ),
      );
  });
  }
}