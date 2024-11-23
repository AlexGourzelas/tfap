import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '/src/config.dart';
import '/src/oss_licenses.dart';
import '/src/widgets/collapsible_section.dart';

class Howto extends StatelessWidget {
  const Howto({super.key});
  final List<Map<String, String>> instructions = [
    {
      'text': 'Step 1: Open the app',
      'image': 'assets/images/step1.png',
    },
    {
      'text': 'Step 2: Allow GPS access',
      'image': 'assets/images/step2.png',
    },
    {
      'text': 'Step 3: Enter your destination',
      'image': 'assets/images/step3.png',
    },
    {
      'text': 'Step 4: Start navigation',
      'image': 'assets/images/step4.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("How to"),
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          tooltip: "Back",
          icon: Icon(Icons.adaptive.arrow_back),
          color: Theme.of(context).appBarTheme.foregroundColor,
        ),
      ),
      body: ListView.builder(
        itemCount: instructions.length,
        itemBuilder: (context, index) {
          return InstructionCard(
            text: instructions[index]['text']!,
            image: instructions[index]['image']!,
          );
        },
      ),
    );
  }
}
class InstructionCard extends StatelessWidget {
  final String text;
  final String image;

  InstructionCard({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(image), // Display the instruction image
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
