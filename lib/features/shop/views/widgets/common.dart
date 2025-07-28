import 'package:flutter/material.dart';

class CommentItem extends StatelessWidget {
  final int id;
  final String name;
  final String email;
  final String body;

  const CommentItem({
    super.key,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ID: $id", style: TextStyle(fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              email,
              style: TextStyle(
                color: Colors.grey[600],
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 12),
            Text(body),
          ],
        ),
      ),
    );
  }
}
