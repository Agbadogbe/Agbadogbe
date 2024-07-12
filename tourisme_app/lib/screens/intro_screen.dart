import 'package:flutter/material.dart';
import '../styles/app_styles.dart';
import 'login_screen.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              _buildPageContent(
                image: 'assets/images/touristic_sites.png',
                title: 'Touristic Sites',
                body: 'Explore the hidden wonders of Benin! Discover unforgettable historical and natural sites. Your personal guide to Benin\'s tourist treasures.',
              ),
              _buildPageContent(
                image: 'assets/images/hotels.png',
                title: 'Hotels',
                body: 'Find the perfect accommodation for your stay. Book comfortable and welcoming hotels. Your haven of peace awaits. Choose from the best hotels.',
              ),
              _buildPageContent(
                image: 'assets/images/stores.png',
                title: 'Stores',
                body: 'Immerse yourself in the authenticity of local stores. Discover the finest arts and crafts of Benin. Stock up on unique souvenirs in the colorful markets.',
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: TextButton(
              onPressed: () {
                _pageController.jumpToPage(2); // Aller à la dernière page
              },
              child: Text('Skip', style: AppStyles.bodyText),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: TextButton(
              onPressed: () {
                if (_currentPage == 2) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                } else {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Text(_currentPage == 2 ? 'Explore' : 'Next', style: AppStyles.bodyText),
            ),
          ),
          Positioned(
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(3, (int index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 10,
                  width: (index == _currentPage) ? 20 : 10,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: (index == _currentPage)
                        ? AppStyles.primaryColor
                        : Colors.grey,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageContent({
    required String image,
    required String title,
    required String body,
  }) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(height: 20),
          Text(
            title,
            style: AppStyles.heading1,
          ),
          SizedBox(height: 20),
          Text(
            body,
            style: AppStyles.bodyText,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
