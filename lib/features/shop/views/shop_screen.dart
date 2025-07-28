
// Full screen with ListView.builder
import 'package:flutter/material.dart';

import 'widgets/common.dart';

class CommentListScreen extends StatelessWidget {
  const CommentListScreen({super.key});

  // Sample data
  final List<Map<String, dynamic>> commentData = const [
    {
      "id": 1,
      "name": "id labore ex et quam laborum",
      "email": "Eliseo@gardner.biz",
      "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos..."
    },
    {
      "id": 2,
      "name": "quo vero reiciendis velit similique earum",
      "email": "Jayne_Kuhic@sydney.com",
      "body": "est natus enim nihil est dolore omnis voluptatem numquam"
    },
    {
      "id": 3,
      "name": "odio adipisci rerum aut animi",
      "email": "Nikita@garfield.biz",
      "body": "quia molestiae reprehenderit quasi aspernatur"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
      ),
      body: ListView.builder(
        itemCount: commentData.length,
        itemBuilder: (context, index) {
          final comment = commentData[index];
          return CommentItem(
            id: comment['id'],
            name: comment['name'],
            email: comment['email'],
            body: comment['body'],
          );
        },
      ),
    );
  }
}