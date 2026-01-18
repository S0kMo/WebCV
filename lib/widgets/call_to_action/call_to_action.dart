import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webcv/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:webcv/widgets/call_to_action/call_to_action_tablet_desktop.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title, {super.key, required int topPadding,});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title: title),
      desktop: CallToActionTabletDesktop(title: title),
    );
  }
}
