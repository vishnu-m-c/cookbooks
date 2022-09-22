import'package:flutter/material.dart';
import'package:widgets/animationtest.dart';
import'package:widgets/customfont.dart';
import 'package:widgets/swipedismiss.dart';
import'package:widgets/validationpage.dart';
import'package:widgets/textstyle.dart';
import'package:widgets/tab.dart';
import'package:widgets/swipedismiss.dart';
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
      ListView(padding: EdgeInsets.all(100.0),
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
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                primary: Colors.red),
            child: Text("Tab Demo"),
            onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TabBarDemo()),
              );
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                primary: Colors.grey),
            child: Text("swipe and dismiss"),
            onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const swipe()),
              );
            },
          ),
      ],
    ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1517960413843-0aee8e2b3285?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmVlbCUyMGdvb2R8ZW58MHx8MHx8&w=1000&q=80')),
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
