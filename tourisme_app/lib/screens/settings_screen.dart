import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.green[700], // Vérifiez la nuance de vert pour correspondre à Figma
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30, // Ajustez la taille pour correspondre à Figma
                    backgroundColor: Colors.white,
                    child: Text(
                      "TA",
                      style: TextStyle(fontSize: 20, color: Colors.green[700]),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Thibeaut Atti",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "thibeautatti@gmail.com",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.black),
            title: Text('Profile', style: TextStyle(fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.receipt_long, color: Colors.black),
            title: Text('Billing history', style: TextStyle(fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.book_online, color: Colors.black),
            title: Text('Reservation', style: TextStyle(fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.language, color: Colors.black),
            title: Text('Languages', style: TextStyle(fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.storage, color: Colors.black),
            title: Text('Free up space', style: TextStyle(fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.policy, color: Colors.black),
            title: Text('Terms and Policies', style: TextStyle(fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help_outline, color: Colors.black),
            title: Text('Help and Support', style: TextStyle(fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.red),
            title: Text('Disconnect', style: TextStyle(fontSize: 16, color: Colors.red)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
