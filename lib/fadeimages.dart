import 'package:flutter/material.dart';
class fadeImages extends StatelessWidget {
  const fadeImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = "fade Images";
    return Scaffold(
      appBar: AppBar(
      title:const Text(title),
    ),
   body: Center(
     child: FadeInImage.assetNetwork(
    placeholder: 'https://upload.wikimedia.org/wikipedia/commons/b/b1/Loading_icon.gif?20151024034921',
    image: 'https://picsum.photos/250?image=9',


   ),
   ),
    );
  }
}
