import 'package:flutter/material.dart';
import 'package:webcv/widgets/call_to_action/call_to_action.dart';
import 'package:webcv/widgets/home_info/home_info.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        HomeInfo(),
        SizedBox(height: 160),
        CallToAction('Send A Message', topPadding: 0),
        ],
      );
  }
}