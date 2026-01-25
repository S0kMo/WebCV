import 'package:flutter/material.dart';
import 'package:webcv/views/about/about_card.dart';
import 'package:webcv/views/about/education_card.dart';
import 'package:webcv/views/about/technical_skills_card.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white70, width: 1),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                  child: Text(
                    'About Me ?',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left column: About card (flex1)
                    Expanded(flex: 1, child: AboutCard()),

                    const SizedBox(width: 16),

                    // Right column: Education card (flex2) and Technical Skills (flex3)
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Education card (flex2)
                          const EducationCard(),
                          const SizedBox(height: 16),

                          // Technical skills card (flex3)
                          const TechnicalSkillsCard(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
