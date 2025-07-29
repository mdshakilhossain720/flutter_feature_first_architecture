import 'package:flutter/material.dart';

import 'widgets/post_item.dart';

class PostListScreen extends StatelessWidget {
  const PostListScreen({super.key});

  final List<Map<String, dynamic>> postData = const [
    {
      "userId": 1,
      "id": 1,
      "title":
          "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
      "body":
          "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum..."
    },
    {
      "userId": 1,
      "id": 2,
      "title": "qui est esse",
      "body": "est rerum tempore vitae\nsequi sint nihil reprehenderit..."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Posts")),
      body: ListView.builder(
        itemCount: postData.length,
        itemBuilder: (context, index) {
          final post = postData[index];
          return PostItem(
            userId: post['userId'],
            id: post['id'],
            title: post['title'],
            body: post['body'],
          );
        },
      ),
    );
  }
}
