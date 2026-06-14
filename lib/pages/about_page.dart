import 'package:flutter/material.dart';

class AboutsPage extends StatelessWidget {
  const AboutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Page")),
      body: Center(child: Text("Hi My name is Nitsh")),
    );
  }
}
