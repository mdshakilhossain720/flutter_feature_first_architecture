import 'package:flutter/material.dart';

import 'widgets/user_item.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  final List<Map<String, dynamic>> users = const [
    {
      "id": 1,
      "name": "Leanne Graham",
      "username": "Bret",
      "email": "Sincere@april.biz",
      "address": {
        "street": "Kulas Light",
        "city": "Gwenborough",
        "zipcode": "92998-3874"
      },
      "phone": "1-770-736-8031 x56442",
      "website": "hildegard.org",
      "company": {
        "name": "Romaguera-Crona",
        "catchPhrase": "Multi-layered client-server neural-net"
      }
    },
    {
      "id": 2,
      "name": "Ervin Howell",
      "username": "Antonette",
      "email": "Shanna@melissa.tv",
      "address": {
        "street": "Victor Plains",
        "city": "Wisokyburgh",
        "zipcode": "90566-7771"
      },
      "phone": "010-692-6593 x09125",
      "website": "anastasia.net",
      "company": {
        "name": "Deckow-Crist",
        "catchPhrase": "Proactive didactic contingency"
      }
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User List")),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return UserItem(
            name: user['name'],
            username: user['username'],
            email: user['email'],
            phone: user['phone'],
            website: user['website'],
            street: user['address']['street'],
            city: user['address']['city'],
            zipcode: user['address']['zipcode'],
            companyName: user['company']['name'],
            catchPhrase: user['company']['catchPhrase'],
          );
        },
      ),
    );
  }
}
