import 'package:flutter/material.dart';
import '../styles/app_styles.dart';

class CotonouScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cotonou', style: AppStyles.titleText),
        backgroundColor: AppStyles.primaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          PlaceCard(
            image: 'assets/images/amazon_square.png',
            title: 'Amazon Square',
          ),
          SizedBox(height: 16.0),
          PlaceCard(
            image: 'assets/images/martyrs_square.png',
            title: 'Martyrs\' Square',
          ),
          SizedBox(height: 16.0),
          PlaceCard(
            image: 'assets/images/cotonou_city.png',
            title: 'Cotonou City',
          ),
        ],
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String image;
  final String title;

  const PlaceCard({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: AppStyles.titleText,
            ),
          ),
        ],
      ),
    );
  }
}
