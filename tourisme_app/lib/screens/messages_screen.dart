import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  final List<Map<String, String>> messages = [
    {
      "name": "Lorent Agboki",
      "message": "Lorem ipsum dolor sit amet consectetur",
      "image": "assets/images/lorent.jpg"
    },
    {
      "name": "Florent Abou",
      "message": "Lorem ipsum dolor sit amet consectetur",
      "image": "assets/images/florent.jpg"
    },
    {
      "name": "Anicet Tigri",
      "message": "Lorem ipsum dolor sit amet consectetur",
      "image": "assets/images/anicet.jpg"
    },
    {
      "name": "Raissa broue",
      "message": "Lorem ipsum dolor sit amet consectetur",
      "image": "assets/images/raissa.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(messages[index]['image']!),
            ),
            title: Text(messages[index]['name']!),
            subtitle: Text(
              messages[index]['message']!,
              overflow: TextOverflow.ellipsis,
            ),
          );
        },
      ),
    );
  }
}
