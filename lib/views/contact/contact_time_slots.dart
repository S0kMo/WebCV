import 'package:flutter/material.dart';

// ============================================================================
// EDITABLE: Time Slots Widget - Modify time slot styling here
// ============================================================================
class ContactTimeSlots extends StatefulWidget {
  final String selectedTime;
  final ValueChanged<String> onTimeChanged;

  // ============================================================================
  // EDITABLE: Available time slots - Modify this list to change booking times
  // ============================================================================
  static const List<String> availableTimeSlots = [
    '8:40 AM',
    '8:50 AM',
    '9:00 AM',
    '9:10 AM',
    '9:20 AM',
    '9:30 AM',
    '9:40 AM',
    '9:50 AM',
  ];

  const ContactTimeSlots({
    super.key,
    required this.selectedTime,
    required this.onTimeChanged,
  });

  @override
  State<ContactTimeSlots> createState() => _ContactTimeSlotsState();
}

class _ContactTimeSlotsState extends State<ContactTimeSlots> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: ContactTimeSlots.availableTimeSlots.map((time) {
        final isSelected = widget.selectedTime == time;
        return GestureDetector(
          onTap: () {
            widget.onTimeChanged(time);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: isSelected ? Theme.of(context).primaryColor : null,
              border: Border.all(
                color: isSelected
                    ? Theme.of(context).primaryColor
                    : Colors.grey[700]!,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              time,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.white,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
