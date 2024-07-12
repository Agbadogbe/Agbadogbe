import 'package:flutter/material.dart';
import '../styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Tourism App', style: AppStyles.titleText),
        backgroundColor: AppStyles.primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Action pour le profil
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hey Thomas ASI', style: AppStyles.heading1),
            SizedBox(height: 20),
            Text('Explore Benin', style: AppStyles.subtitleText),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: GestureDetector(
                      onTap: () {
                        if (choices[index].title == 'Cotonou') {
                          Navigator.pushNamed(context, '/cotonou');
                        }
                        // Ajoutez des actions pour d'autres destinations si nécessaire
                      },
                      child: SelectCard(choice: choices[index]),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: 'Food-Hotel-Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: AppStyles.primaryColor,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Cotonou', icon: Icons.location_city),
  Choice(title: 'Ouidah', icon: Icons.location_city),
  Choice(title: 'Abomey', icon: Icons.location_city),
  Choice(title: 'Porto-Novo', icon: Icons.location_city),
  Choice(title: 'Grand-Popo', icon: Icons.location_city),
  Choice(title: 'Natitingou', icon: Icons.location_city),
  Choice(title: 'Banikoara', icon: Icons.location_city),
  Choice(title: 'Ketou', icon: Icons.location_city),
  Choice(title: 'Segbana', icon: Icons.location_city),
  Choice(title: 'Ouassa-Pehunco', icon: Icons.location_city),
  Choice(title: 'Abomey-Calavi', icon: Icons.location_city),
  Choice(title: 'Dogbo', icon: Icons.location_city),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.titleLarge!;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Icon(choice.icon, size: 50.0, color: textStyle.color)),
            Text(choice.title, style: AppStyles.bodyText),
          ],
        ),
      ),
    );
  }
}
