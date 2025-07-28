import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  final int id;
  final String title;
  final String thumbnailUrl;

  const PhotoItem({
    super.key,
    required this.id,
    required this.title,
    required this.thumbnailUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            thumbnailUrl,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text("Photo ID: $id"),
      ),
    );
  }
}
