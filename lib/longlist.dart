import 'package:flutter/material.dart';
class longList extends StatefulWidget {
  const longList({Key? key}) : super(key: key);
  @override
  State<longList> createState() => _longListState(
      List<String>.generate(10000, (i) => 'Item $i')
  );
}

class _longListState extends State<longList> {
  @override
   final  List<String> items;

  _longListState(this.items);
  Widget build(BuildContext context) {

    const title = 'Long List';
    return Scaffold(
      appBar: AppBar(
        title:const Text(title),
      ),
      body: ListView.builder(
          itemCount: items.length,
        prototypeItem: ListTile(
          title: Text(items.first),
        ),
        itemBuilder :(context,index){
            return ListTile(
            title: Text(items[index])
            );
        },
        ),
      );
  }
}
