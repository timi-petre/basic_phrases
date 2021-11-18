import 'package:flutter/material.dart';

import 'basic_phrases.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basic Phrases',
      home: BasicPhrases(
        title: 'Basic Phrases',
      ),
    );
  }
}
