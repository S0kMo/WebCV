import 'package:flutter/material.dart';
import 'package:webcv/views/contact/contact_calendar.dart';
import 'package:webcv/views/contact/contact_name_card.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFF121212),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white10),
          ),
          child: Table(
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FixedColumnWidth(16),
              2: FlexColumnWidth(2),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.fill,
            children: [
              TableRow(
                children: [
                  const ContactNameCard(),
                  const VerticalDivider(
                    color: Colors.white10,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  ContactCalendar(
                    // selectedDate: DateTime.now(),
                    // onDateChanged: (DateTime newDate) {
                    //   // Handle date change
                    // },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
