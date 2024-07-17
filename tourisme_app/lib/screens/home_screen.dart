import 'package:flutter/material.dart';
import '../styles/app_styles.dart';
import 'cotonou_screen.dart'; // Assurez-vous que cette page est prête à être utilisée
import 'store_screen.dart';  // Ecran pour la boutique
import 'messages_screen.dart';  // Ecran pour les messages
import 'settings_screen.dart';  // Ecran pour les paramètres

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions() => [
    ExploreBeninScreen(), // Ecran pour l'onglet 'Home'
    StoreScreen(), // Ecran pour l'onglet 'Store'
    MessagesScreen(), // Ecran pour l'onglet 'Messages'
    SettingsScreen(), // Ecran pour l'onglet 'Settings'
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Hey Thibeaut Atti', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.red),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: _widgetOptions().elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppStyles.primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10,
      ),
    );
  }
}

class ExploreBeninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(choices.length, (index) {
        return SelectCard(choice: choices[index]);
      }),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.imagePath});
  final String title;
  final String imagePath;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Cotonou', imagePath: 'assets/images/cotonou.png'),
  Choice(title: 'Ouidah', imagePath: 'assets/images/ouidah.png'),
  Choice(title: 'Abomey', imagePath: 'assets/images/abomey.jpg'),
  Choice(title: 'Porto-Novo', imagePath: 'assets/images/porto_novo.jpg'),
  Choice(title: 'Grand-Popo', imagePath: 'assets/images/grand_popo.jpg'),
  Choice(title: 'Natitingou', imagePath: 'assets/images/natitingou.jpg'),
  Choice(title: 'Banikoara', imagePath: 'assets/images/banikoara.jpg'),
  Choice(title: 'Ketou', imagePath: 'assets/images/ketou.jpg'),
  Choice(title: 'Segbana', imagePath: 'assets/images/segbana.jpg'),
  Choice(title: 'Ouassa-Pehunco', imagePath: 'assets/images/ouassa_pehunco.jpg'),
  Choice(title: 'Abomey-Calavi', imagePath: 'assets/images/abomey_calavi.jpg'),
  Choice(title: 'Dogbo', imagePath: 'assets/images/dogbo.jpg'),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigateToScreen(context, choice.title),
      child: Card(
        margin: EdgeInsets.only(bottom: 16),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 8,
        shadowColor: Colors.black.withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                choice.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: Text(
                choice.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToScreen(BuildContext context, String title) {
    if (title == 'Cotonou') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CotonouScreen()),
      );
    }
    // Ajoutez plus de cas pour d'autres écrans si nécessaire
  }
}
