import 'package:flutter/material.dart';

// ============================================================================
// EDITABLE: Contact Form Widget - Modify styling and fields here
// ============================================================================
class ContactForm extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController messageController;
  final VoidCallback onSubmit;

  const ContactForm({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.messageController,
    required this.onSubmit,
  });

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Text(
          'Get in Touch',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(height: 8),
        Text(
          'Book me and I will never give you up.',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey[400],
              ),
        ),
        const SizedBox(height: 32),

        // Name Field
        _buildTextField(
          controller: widget.nameController,
          label: 'Full Name',
          hint: 'Enter your full name',
        ),
        const SizedBox(height: 16),

        // Email Field
        _buildTextField(
          controller: widget.emailController,
          label: 'Email Address',
          hint: 'your.email@example.com',
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),

        // Message Field
        _buildTextField(
          controller: widget.messageController,
          label: 'Message',
          hint: 'Tell me about your project...',
          maxLines: 5,
        ),
        const SizedBox(height: 24),

        // Submit Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: widget.onSubmit,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text('Schedule Meeting'),
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================================
  // EDITABLE: Text Field Widget - Modify styling here
  // ============================================================================
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    TextInputType keyboardType = TextInputType.text,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
