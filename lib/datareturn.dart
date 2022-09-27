import 'package:flutter/material.dart';
class DataReturn extends StatefulWidget {
  const DataReturn({Key? key}) : super(key: key);

  @override
  State<DataReturn> createState() => _DataReturnState();
}

class _DataReturnState extends State<DataReturn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Data return")

      ),
      body:Center(
        child: SelectionButton(),
      )
    );
  }
}
class SelectionButton extends StatefulWidget {
  const SelectionButton({Key? key}) : super(key: key);

  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      _navigateAndDisplaySelection(context);
    },
      child: const Text('Pick an option!'),
    );
  }
  Future<void>_navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(context,
      MaterialPageRoute(builder: (context) => const SelectionScreen()),
    );
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }
  }
  class SelectionScreen extends StatelessWidget {
    const SelectionScreen({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Pick an option'),
        ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Yep!');
              },
              child: const Text('Yep!'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Nope.');
              },
              child: const Text('Nope.'),
            ),
          )
        ],
      ),
    ),
    );
  }
}

