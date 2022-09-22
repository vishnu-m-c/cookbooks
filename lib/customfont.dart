import 'package:flutter/material.dart';

class CustomFont extends StatefulWidget {
  const CustomFont({Key? key}) : super(key: key);

  @override
  State<CustomFont> createState() => _CustomFontState();
}

class _CustomFontState extends State<CustomFont> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('menu'),
      ),
      body: const Center(
          // This Text widget uses the RobotoMono font.
          child: Text(
            'Roboto Mono sample',
            style: TextStyle(fontFamily: 'Courier'),
          ),
        ),

      );
  }
}