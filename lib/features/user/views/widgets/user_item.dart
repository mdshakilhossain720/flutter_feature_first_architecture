import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;

  final String street;
  final String city;
  final String zipcode;

  final String companyName;
  final String catchPhrase;

  const UserItem({
    super.key,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.street,
    required this.city,
    required this.zipcode,
    required this.companyName,
    required this.catchPhrase,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text('@$username', style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            Text('📧 $email'),
            Text('📞 $phone'),
            Text('🌐 $website'),
            const SizedBox(height: 12),
            Text('🏠 Address:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('$street, $city, $zipcode'),
            const SizedBox(height: 12),
            Text('🏢 Company:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(companyName),
            Text('"$catchPhrase"', style: TextStyle(fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }
}
