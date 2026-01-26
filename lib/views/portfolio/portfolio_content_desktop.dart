import 'package:flutter/material.dart';
import 'package:webcv/views/portfolio/portfolio_card.dart';

class PortfolioContentDesktop extends StatelessWidget {
  const PortfolioContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Section Header
          Text('Project', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          Text(
            'Showcasing my recent work on projects',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 40),

          // Portfolio Grid
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: 1.4,
              children: [
                PortfolioCard(
                  title: 'Private Villa',
                  description:
                      'A modern Villa with a need for robust design of network infrastructure and smart home integration',
                  techStack: [
                    'Network Architecture',
                    'Smart Home Integration',
                    'Security Systems',
                  ],
                  imageUrl: 'assets/villa_network.png',
                ),
                PortfolioCard(
                  title: 'Databaese Management System',
                  description:
                      'Admin dashboard for managing products, orders, and analytics with AI integration for predictive insights',
                  techStack: ['SQL', 'Figma', 'PHP'],
                  imageUrl: 'assets/database_ai.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
