import 'package:flutter/material.dart';


class navigateWith extends StatelessWidget {
  const navigateWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("First Screen"),

      ),
body: Center(
  child: ElevatedButton(

    onPressed:(){

      Navigator.pushNamed(context, '/second');
    },
    child:const Text('Launch screen'),
),
    ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Second Screen")
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
         },
           child:const Text('Go back'),
        ),
      ),
    );
  }
}

