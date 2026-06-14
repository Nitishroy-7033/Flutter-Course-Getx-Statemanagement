import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Us"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.flutter_dash, size: 50),
            ),

            const SizedBox(height: 20),

            Text(
              "My Awesome App",
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Text(
              "Version 1.0.0",
              style: TextStyle(color: Colors.grey.shade600),
            ),

            const SizedBox(height: 30),

            const Text(
              "About",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              "My Awesome App is designed to provide a seamless and user-friendly experience. "
              "Our goal is to build high-quality applications that help users solve real-world problems efficiently.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.6),
            ),

            const SizedBox(height: 30),

            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Developer"),
                subtitle: const Text("Nitish Roy"),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text("Email"),
                subtitle: const Text("nitish@example.com"),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const Icon(Icons.language),
                title: const Text("Website"),
                subtitle: const Text("www.example.com"),
              ),
            ),

            const SizedBox(height: 30),

            Text(
              "© 2026 All Rights Reserved",
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
