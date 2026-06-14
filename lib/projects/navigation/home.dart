import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/projects/navigation/about_page.dart';
import 'package:getx_learning/projects/navigation/contact_us.dart';

class BrandPage extends StatelessWidget {
  const BrandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Our Brand"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.business, size: 50),
            ),

            const SizedBox(height: 20),

            Text(
              "My Brand",
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              "Building innovative solutions that simplify everyday life and create meaningful experiences for our customers.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    Icon(Icons.lightbulb_outline, size: 40),
                    SizedBox(height: 10),
                    Text(
                      "Our Mission",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "To provide high-quality products and services that deliver value and trust to our customers.",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    Icon(Icons.visibility_outlined, size: 40),
                    SizedBox(height: 10),
                    Text(
                      "Our Vision",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "To become a trusted brand known for innovation, quality, and customer satisfaction.",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Get.offAllNamed("about-us");
                },
                icon: const Icon(Icons.info_outline),
                label: const Text("About Us"),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  Get.toNamed("contact-us");
                },
                icon: const Icon(Icons.contact_mail_outlined),
                label: const Text("Contact Us"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
