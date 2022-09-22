import 'package:flutter/material.dart';
class Textstyle extends StatefulWidget {
  const Textstyle({Key? key}) : super(key: key);

  @override
  State<Textstyle> createState() => _TextstyleState();
}

class _TextstyleState extends State<Textstyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text("Text filed and style") ,
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.white,
body:
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
