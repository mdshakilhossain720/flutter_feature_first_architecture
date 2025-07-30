import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/post_controller.dart';
import 'widgets/post_item.dart';

class PostListScreen extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final post = ref.watch(postControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("Posts")),
      body: post.when(
        data: (data) {
          return ListView.builder(
            itemCount:data.length,
            itemBuilder: (context, index) {
              final post = data[index];
              return PostItem(
                userId: post.id ?? 0,
                id: post.userId ?? 0,
                title: post.title ?? '',
                body: post.body ?? '',
              );
            },
          );
        },
        // child: ListView.builder(
        //   itemCount: postData.length,
        //   itemBuilder: (context, index) {
        //     final post = postData[index];
        //     return PostItem(
        //       userId: post['userId'],
        //       id: post['id'],
        //       title: post['title'],
        //       body: post['body'],
        //     );
        //   },
        // ),
         error: (Object error, StackTrace stackTrace) {  }, loading: () {  },
      ),
    );
  }
}
