import 'package:flutter/material.dart';

class ContactCalendar extends StatefulWidget {
  const ContactCalendar({super.key});

  @override
  State<ContactCalendar> createState() => _ContactCalendarState();
}

class _ContactCalendarState extends State<ContactCalendar> {
  DateTime selectedDate = DateTime(2026, 1, 19);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "January 2026",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        // Simplification of the grid for logic example
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
          ),
          itemCount: 31,
          itemBuilder: (context, index) {
            int day = index + 1;
            bool isSelected = day == selectedDate.day;
            return GestureDetector(
              onTap: () =>
                  setState(() => selectedDate = DateTime(2026, 1, day)),
              child: Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.white : Colors.grey[800],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "$day",
                    style: TextStyle(
                      color: isSelected ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
