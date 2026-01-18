import 'package:flutter/material.dart';

// ============================================================================
// EDITABLE: Timezone Selector - Modify timezone dropdown here
// ============================================================================
class ContactTimezoneSelector extends StatefulWidget {
  final String selectedTimezone;
  final ValueChanged<String> onTimezoneChanged;

  // ============================================================================
  // EDITABLE: Available timezones - Modify this list to add/remove timezones
  // ============================================================================
  static const List<String> availableTimezones = [
    'Asia/Bangkok',
    'Asia/Singapore',
    'Asia/Hong_Kong',
    'America/New_York',
    'Europe/London',
    'Australia/Sydney',
  ];

  const ContactTimezoneSelector({
    super.key,
    required this.selectedTimezone,
    required this.onTimezoneChanged,
  });

  @override
  State<ContactTimezoneSelector> createState() =>
      _ContactTimezoneSelectorState();
}

class _ContactTimezoneSelectorState extends State<ContactTimezoneSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[700]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButton<String>(
        value: widget.selectedTimezone,
        isExpanded: true,
        underline: const SizedBox(),
        items: ContactTimezoneSelector.availableTimezones.map((timezone) {
          return DropdownMenuItem(
            value: timezone,
            child: Text(timezone),
          );
        }).toList(),
        onChanged: (value) {
          if (value != null) {
            widget.onTimezoneChanged(value);
          }
        },
      ),
    );
  }
}
