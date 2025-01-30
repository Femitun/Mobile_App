import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // Simplified constructor

  // GitHub and HNG Hire URLs
  final String githubRepoUrl = "https://github.com/your-username/your-repository";
  final String hngHireUrl = "https://hng.tech/hire/flutter-developers";

  // Function to open links
  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HNG Internship Task')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _launchURL(githubRepoUrl),
              child: const Text('View GitHub Repository'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchURL(hngHireUrl),
              child: const Text('Visit HNG Hire Page'),
            ),
          ],
        ),
      ),
    );
  }
}
