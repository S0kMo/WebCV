import 'package:flutter/material.dart';
import 'package:webcv/views/contact/contact_calendar.dart';
import 'package:webcv/views/contact/contact_name_card.dart';
import 'package:webcv/views/contact/contact_time_slots.dart';
import 'package:webcv/views/contact/contact_form.dart';


class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  bool _showForm = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  void _switchToForm() {
    setState(() {
      _showForm = true;
    });
  }

  void _switchToCalendar() {
    setState(() {
      _showForm = false;
    });
  }

  void _handleFormSubmit() {
    // Handle form submission
    debugPrint('Form submitted');
    debugPrint('Name: ${_nameController.text}');
    debugPrint('Email: ${_emailController.text}');
    debugPrint('Message: ${_messageController.text}');

    // Reset form after submission if needed
    // _nameController.clear();
    // _emailController.clear();
    // _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    // Check if the screen width is mobile size
    final bool isMobile = MediaQuery.of(context).size.width < 768;
    
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white70, width: 1),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                  child: Text(
                    'Contact Me',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Text(
                    'Let\'s discuss your project',
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(color: Colors.grey[400]),
                  ),
                ),
                const SizedBox(height: 16),

                // Mobile layout: Stack content vertically
                if (isMobile)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name card
                      const ContactNameCard(),
                      const SizedBox(height: 16),

                      // Calendar or Form
                      _showForm
                          ? ContactForm(
                              nameController: _nameController,
                              emailController: _emailController,
                              messageController: _messageController,
                              onSubmit: _handleFormSubmit,
                              onBack: _switchToCalendar,
                            )
                          : Column(
                              children: [
                                ContactCalendar(
                                  selectedDate: DateTime.now(),
                                  onDateChanged: (newDate) {},
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        16,
                                        0,
                                        0,
                                        5,
                                      ),
                                      child: Text(
                                        "Available time slots",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(color: Colors.grey[400]),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    0,
                                    5,
                                    0,
                                    0,
                                  ),
                                  child: ContactTimeSlots(
                                    selectedTime: '10:00 AM',
                                    onTimeChanged: (newTime) {},
                                    onTimeSelected: _switchToForm,
                                  ),
                                ),
                              ],
                            ),
                    ],
                  )
                // Desktop layout: Two columns
                else
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left column: Name card only
                      Expanded(flex: 1, child: const ContactNameCard()),

                      const SizedBox(width: 16),

                      // Right column: Calendar or Form
                      Expanded(
                        flex: 2,
                        child: _showForm
                            ? ContactForm(
                                nameController: _nameController,
                                emailController: _emailController,
                                messageController: _messageController,
                                onSubmit: _handleFormSubmit,
                                onBack: _switchToCalendar,
                              )
                            : Column(
                                children: [
                                  ContactCalendar(
                                    selectedDate: DateTime.now(),
                                    onDateChanged: (newDate) {},
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                          16,
                                          0,
                                          0,
                                          5,
                                        ),
                                        child: Text(
                                          "Available time slots",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(
                                                color: Colors.grey[400],
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      5,
                                      0,
                                      0,
                                    ),
                                    child: ContactTimeSlots(
                                      selectedTime: '10:00 AM',
                                      onTimeChanged: (newTime) {},
                                      onTimeSelected: _switchToForm,
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
