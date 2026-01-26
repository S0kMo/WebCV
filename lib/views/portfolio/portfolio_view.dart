import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webcv/views/portfolio/portfolio_content_desktop.dart';
import 'package:webcv/views/portfolio/portfolio_content_mobile.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: Colors.transparent,
        body: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? PortfolioContentMobile()
            : PortfolioContentDesktop(),
      ),
    );
  }
}
