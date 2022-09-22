import'package:flutter/material.dart';
import'package:widgets/animationtest.dart';
import'package:widgets/customfont.dart';
import'package:widgets/validationpage.dart';
import'package:widgets/textstyle.dart';
void main() {
  runApp(
      MaterialApp(home: const Home())
  );
}
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
        title: const Text('Home'),
      ),
      body:
      Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children:[ 
          Image.network(width: 400,height: 200,'https://5.imimg.com/data5/LG/QF/CT/SELLER-36779886/smiley-ball-500x500.jpg'),
          ElevatedButton(
          style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
          primary: Colors.orange),
          onPressed: () {
            final snackBar = SnackBar(
              content: const Text('Yay! A SnackBar!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Show SnackBar'),
        ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
            primary: Colors.grey),
              child: Text("custom font"),
          onPressed:(){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CustomFont()),
          );},
  ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
            primary: Colors.green),
            child: Text("export fonts"),
            onPressed:(){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AnimationTest()),
    );
    },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                primary: Colors.black),
            child: Text("Validation Page"),
            onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ValidationPage()),
              );
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                primary: Colors.yellow),
            child: Text("Text field"),
            onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Textstyle()),
              );
            },
          ),
      ],


    ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                MaterialPageRoute(builder: (context) => const Textstyle());
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );

  }
}
