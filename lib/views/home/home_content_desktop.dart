import 'package:flutter/material.dart';
import 'package:webcv/widgets/call_to_action/call_to_action.dart';
import 'package:webcv/widgets/home_info/home_info.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                children: <Widget> [
                HomeInfo(),
                Expanded(
                  child: Center(
                    child: CallToAction('Send A Message', topPadding: 0),
                  ),
                )
              ],
            );
  }
}