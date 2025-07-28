import 'package:flutter/material.dart';

import 'widgets/photo_items.dart';

class PhotoListScreen extends StatelessWidget {
  const PhotoListScreen({super.key});

  final List<Map<String, dynamic>> photoData = const [
    {
      "albumId": 1,
      "id": 1,
      "title": "accusamus beatae ad facilis cum similique qui sunt",
      "url": "https://via.placeholder.com/600/92c952",
      "thumbnailUrl": "https://via.placeholder.com/150/92c952"
    },
    {
      "albumId": 1,
      "id": 2,
      "title": "reprehenderit est deserunt velit ipsam",
      "url": "https://via.placeholder.com/600/771796",
      "thumbnailUrl": "https://via.placeholder.com/150/771796"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Photo Album")),
      body: ListView.builder(
        itemCount: photoData.length,
        itemBuilder: (context, index) {
          final photo = photoData[index];
          return PhotoItem(
            id: photo['id'],
            title: photo['title'],
            thumbnailUrl: photo['thumbnailUrl'],
          );
        },
      ),
    );
  }
}
