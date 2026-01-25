import 'package:flutter/material.dart';

class ContactCalendar extends StatefulWidget {
  final DateTime selectedDate;
  final Function(DateTime newDate) onDateChanged;

  const ContactCalendar({
    super.key,
    required this.selectedDate,
    required this.onDateChanged,
  });

  @override
  State<ContactCalendar> createState() => _ContactCalendarState();
}

class _ContactCalendarState extends State<ContactCalendar> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "January 2026",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1.6,
            ),
            itemCount: 31,
            itemBuilder: (context, index) {
              int day = index + 1;
              bool isSelected = day == selectedDate.day;
            
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedDate = DateTime(2026, 1, day);
                    widget.onDateChanged(selectedDate);
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xFFFAFAFA)
                        : Colors.grey[900],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8),
                    border: isSelected
                        ? null
                        : Border.all(color: Colors.white10),
                  ),
                  child: Center(
                    child: Text(
                      "$day",
                      style: TextStyle(
                        color: isSelected ? Colors.black : Colors.white,
                        fontWeight: isSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
