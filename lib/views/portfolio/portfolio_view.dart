import 'package:flutter/material.dart';
import 'package:webcv/views/contact/contact_form.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text(
          'Portfolio View',
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
