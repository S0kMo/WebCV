import 'package:flutter/material.dart';

// ============================================================================
// EDITABLE: Time Slots Widget - Modify time slot styling here
// ============================================================================
class ContactTimeSlots extends StatefulWidget {
  final String selectedTime;
  final ValueChanged<String> onTimeChanged;
  final VoidCallback onTimeSelected;

  // ============================================================================
  // EDITABLE: Available time slots - Modify this list to change booking times
  // ============================================================================
  static const List<String> availableTimeSlots = [
    '9:40 AM',
    '10:40 AM',
    '11:40 AM',
    '12:40 AM',
    '13:40 PM',
    '14:40 PM',
    '15:40 PM',
  ];

  const ContactTimeSlots({
    super.key,
    required this.selectedTime,
    required this.onTimeChanged,
    required this.onTimeSelected,
  });

  @override
  State<ContactTimeSlots> createState() => _ContactTimeSlotsState();
}

class _ContactTimeSlotsState extends State<ContactTimeSlots> {
  Set<String> hoveredTimes = {};

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 11,
      runSpacing: 7,
      children: ContactTimeSlots.availableTimeSlots.map((time) {
        final isSelected = widget.selectedTime == time;
        final isHovered = hoveredTimes.contains(time);

        return MouseRegion(
          onEnter: (_) {
            setState(() {
              hoveredTimes.add(time);
            });
          },
          onExit: (_) {
            setState(() {
              hoveredTimes.remove(time);
            });
          },
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              widget.onTimeChanged(time);
              widget.onTimeSelected();
            },
            child: TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOutCubic,
              tween: Tween<double>(
                begin: isHovered && !isSelected ? 1.05 : 1.0,
                end: isHovered && !isSelected ? 1.05 : 1.0,
              ),
              builder: (context, scale, child) {
                return Transform.scale(
                  scale: scale,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOutCubic,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Theme.of(context).primaryColor
                          : isHovered
                          ? Theme.of(context).primaryColor.withOpacity(0.15)
                          : Colors.transparent,
                      border: Border.all(
                        color: isSelected
                            ? Theme.of(context).primaryColor
                            : isHovered
                            ? Theme.of(context).primaryColor.withOpacity(0.7)
                            : Colors.grey[700]!,
                        width: isSelected
                            ? 2.0
                            : isHovered
                            ? 1.5
                            : 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: isHovered && !isSelected
                          ? [
                              BoxShadow(
                                color: Theme.of(
                                  context,
                                ).primaryColor.withOpacity(0.4),
                                blurRadius: 12,
                                spreadRadius: 2,
                                offset: const Offset(0, 4),
                              ),
                            ]
                          : isSelected
                          ? [
                              BoxShadow(
                                color: Theme.of(
                                  context,
                                ).primaryColor.withOpacity(0.6),
                                blurRadius: 16,
                                spreadRadius: 4,
                                offset: const Offset(0, 6),
                              ),
                            ]
                          : null,
                    ),
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOutCubic,
                      style: TextStyle(
                        color: isSelected
                            ? Colors.white
                            : isHovered
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        fontWeight: isSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                      child: Text(
                        time,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      }).toList(),
    );
  }
}
