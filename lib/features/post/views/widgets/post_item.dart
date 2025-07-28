import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final int userId;
  final int id;
  final String title;
  final String body;

  const PostItem({
    super.key,
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 8),
            Text(body),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("User ID: $userId",
                    style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                Text("Post ID: $id",
                    style: TextStyle(color: Colors.grey[600], fontSize: 12)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
