import 'package:flutter/material.dart';
import 'contact_calendar.dart';
import 'contact_time_slots.dart';

// ============================================================================
// EDITABLE: Booking Section Widget - Modify booking section styling here
// ============================================================================
class ContactBookingSection extends StatefulWidget {
  final DateTime selectedDate;
  final String selectedTime;
  final ValueChanged<DateTime> onDateChanged;
  final ValueChanged<String> onTimeChanged;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController messageController;
  final VoidCallback onSubmit;

  const ContactBookingSection({
    super.key,
    required this.selectedDate,
    required this.selectedTime,
    required this.onDateChanged,
    required this.onTimeChanged,
    required this.nameController,
    required this.emailController,
    required this.messageController,
    required this.onSubmit,
  });

  @override
  State<ContactBookingSection> createState() => _ContactBookingSectionState();
}

class _ContactBookingSectionState extends State<ContactBookingSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Text(
            'Select Date & Time',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 24),

          // Calendar
          ContactCalendar(
            // selectedDate: widget.selectedDate,
            // onDateChanged: widget.onDateChanged,
          ),
          const SizedBox(height: 32),

          // Time Slots
          Text(
            'Available Times',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          ContactTimeSlots(
            selectedTime: widget.selectedTime,
            onTimeChanged: widget.onTimeChanged,
          ),
        ],
      ),
    );
  }
}
