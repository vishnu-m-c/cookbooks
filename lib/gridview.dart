import 'package:flutter/material.dart';
class lists extends StatefulWidget {
  const lists({Key? key, required List<Container> children, required SliverGridDelegateWithFixedCrossAxisCount gridDelegate}) : super(key: key);

  @override
  State<lists> createState() => _listsState();
}

class _listsState extends State<lists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(children: [
          Container(decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.red,),
            child: Column(children:[
            Icon(Icons.home,size: 50,color: Colors.white,),
        ],),
      ),
          Container(decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.yellow,)),
          Container(decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.green,)),
          Container(decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.grey,)),

          ],
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing:10 ,mainAxisSpacing: 10  ),
    ),
    )
    )
    );
  }
}
