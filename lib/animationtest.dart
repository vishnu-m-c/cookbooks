import 'package:flutter/material.dart';

class AnimationTest extends StatefulWidget {
  const AnimationTest({Key? key}) : super(key: key);

  @override
  State<AnimationTest> createState() => _AnimationTestState();
}

class _AnimationTestState extends State<AnimationTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('menu'),
      ),
      body:
      const Center(
      // This Text widget uses the Raleway font.
      child: Text(
    'Using the Raleway font from the awesome_package',
    style: TextStyle(
    fontFamily: 'Raleway',
    package: 'awesome_package',
    ),
    ),
      ),
    );
  }
}
