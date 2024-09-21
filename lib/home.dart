import 'package:flutter/material.dart'; // Import the Material library

class Home extends StatefulWidget {
  const Home({super.key}); // Use a named constructor for consistency

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode
          ? Colors.white
          : const Color(0xFF111111), // Set background color based on mode

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              isDarkMode
                  ? 'lib/assets/img/Group 1.jpg'
                  : 'lib/assets/img/Dark mode.png',
              width: 200,
              height: 200, // Specify image paths
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
              child: Text(isDarkMode ? 'Light Mode' : 'Dark Mode'),
            ),
          ],
        ),
      ),
    );
  }
}
