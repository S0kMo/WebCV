import 'package:flutter/material.dart';

class TechnicalSkillsCard extends StatelessWidget {
  const TechnicalSkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white70, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Text(
            'Technical Skills',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // Programming Languages Marquee
          _buildMarqueeCategory(context, 'Programming Languages', [
            'TypeScript (React)',
            'Dart (Flutter)',
            'Tailwind CSS',
            'Python',
            'Java',
            'SQL',
            'GO',
          ]),
          const SizedBox(height: 16),

          // Networking Marquee
          _buildMarqueeCategory(context, 'Networking', [
            'Network Design and Architecture',
            'Protocols and Technologies',
            'Network Troubleshooting',
            'Wireless Technologies',
            'Network Security',
            'IoT Connectivity',
          ]),
          const SizedBox(height: 16),

          // Tools & Technologies Marquee
          _buildMarqueeCategory(context, 'Tools & Technologies', [
            'Microsoft SQL Server',
            'Cisco Packet Tracer',
            'Git & Github',
            'Electron (engine franmework)',
            'Figma',
            'Unity (engine)',
          ]),
        ],
      ),
    );
  }

  Widget _buildMarqueeCategory(
    BuildContext context,
    String category,
    List<String> skills,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),

        // Horizontal Marquee Container
        LayoutBuilder(
          builder: (context, constraints) {
            final bool isMobile = MediaQuery.of(context).size.width < 768;
            final double containerWidth = constraints.maxWidth;

            return Container(
              height: isMobile ? 35 : 40, // Smaller height for mobile
              width: containerWidth,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                child: Row(
                  children: skills.map((skill) {
                    // Calculate dynamic padding based on skill name length
                    final double skillPadding = isMobile
                        ? (skill.length > 15 ? 6 : 8)
                        : (skill.length > 15 ? 10 : 12);

                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: skillPadding,
                        vertical: isMobile ? 4 : 6,
                      ),
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.white30, width: 1),
                      ),
                      child: Text(
                        skill,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                      ),
                    );
                  }).toList(),
                ),
              ),
            );
          },
        ),

        const SizedBox(height: 12),
      ],
    );
  }
}
