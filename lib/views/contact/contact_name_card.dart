import 'package:flutter/material.dart';

class ContactNameCard extends StatelessWidget {
  const ContactNameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(8),
      color: Colors.transparent,
      child: Container(
        width: 350,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white70, width: 1),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/profile_picture.png'),
            ),
            SizedBox(height: 16),
            Text(
              'Sum Somony',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Telecomunications & Network Engineering Student',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: Colors.white),
            ),
            SizedBox(height: 16),
            // Description with highlighted link
            RichText(
              text: TextSpan(
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                children: [
                  TextSpan(text: "Book me and I will never give you up. "),
                  TextSpan(
                    text: "github.com",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  TextSpan(
                    text:
                        " will never let you down. Open Source will never run around and desert you.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),

            _buildIconText(Icons.access_time, "10m", context),
            SizedBox(height: 12),
            _buildIconText(Icons.link, "https://github.com/S0kMo", context),
            SizedBox(height: 12),
            _buildIconText(Icons.public, "Asia/PhnomPenh", context),

            SizedBox(height: 34),
          ],
        ),
      ),
    );
  }
}

Widget _buildIconText(IconData icon, String text, BuildContext context) {
  return Row(
    children: [
      Icon(icon, color: Colors.grey, size: 22),
      SizedBox(width: 12),
      Text(
        text,
        style: Theme.of(context).textTheme.displayMedium?.copyWith(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
