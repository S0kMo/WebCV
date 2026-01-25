import 'package:flutter/material.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({super.key});

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
            'Education',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // Education items
          _buildEducationItem(
            context,
            'Telecomunication & Network Engineering',
            '2022 - Present',
            'ITC - Institute of Technology of Cambodia',
          ),
          const SizedBox(height: 12),
          _buildEducationItem(
            context,
            'Technical and Vocational Diploma in Electronics Engineering',
            '2020 - 2022',
            'National Polytechnic Institute of Cambodia (NPIC)',
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem(
    BuildContext context,
    String degree,
    String duration,
    String institution,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          degree,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          duration,
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: Colors.white70),
        ),
        const SizedBox(height: 4),
        Text(
          institution,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Colors.white70,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 8),
        const Divider(color: Colors.white30, thickness: 1),
        const SizedBox(height: 8),
      ],
    );
  }
}
