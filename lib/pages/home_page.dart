import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _value1 = 0;

  void _onChanged(value) {
    setState(() {
      _value1 = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.show_chart),
        ],
        centerTitle: true,
        title: const Text("My App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: 1,
              groupValue: _value1,
              onChanged: _onChanged,
            ),
            Radio(
              value: 2,
              groupValue: _value1,
              onChanged: _onChanged,
            ),
            RadioListTile(
              value: 3,
              groupValue: _value1,
              title: Text("RadioTile"),
              subtitle: Text("radio list Tile"),
              activeColor: Colors.red,
              onChanged: _onChanged,
            )
          ],
        ),
      ),
    );
  }
}
