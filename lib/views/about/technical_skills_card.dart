import 'package:flutter/material.dart';
import 'package:webcv/widgets/marquee/marquee.dart';

class TechnicalSkillsCard extends StatelessWidget {
  const TechnicalSkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
            'Dart (Flutter)',
            'Python',
            'JavaScript',
            'C++',
            'Java',
          ]),
          const SizedBox(height: 16),

          // Networking Marquee
          _buildMarqueeCategory(context, 'Networking', [
            'TCP/IP Protocols',
            'Routing & Switching',
            'Network Security',
            'Wireless Technologies',
            'Network Troubleshooting',
          ]),
          const SizedBox(height: 16),

          // Tools & Technologies Marquee
          _buildMarqueeCategory(context, 'Tools & Technologies', [
            'Git & Version Control',
            'Wireshark',
            'Cisco Packet Tracer',
            'Linux/Unix Systems',
            'Database Management',
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
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: HorizontalMarquee(
            scrollAxisWidth: 600, // Adjust width as needed
            child: Row(
              children:
                  skills.map((skill) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
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
                  }).toList()..addAll(
                    // Add duplicate skills for seamless looping
                    skills.map((skill) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.white30, width: 1),
                        ),
                        child: Text(
                          skill,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: Colors.white70),
                        ),
                      );
                    }).toList(),
                  ),
            ),
          ),
        ),

        const SizedBox(height: 12),
      ],
    );
  }
}
