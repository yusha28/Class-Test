import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  final String name;

   GridViewScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Name Buttons'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: List.generate(
          name.length,
          (index) => MyButton(name[index]),
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  final String letter;

  MyButton(this.letter);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _isVisible = false;
          });
        },
        style: ElevatedButton.styleFrom(
          
          padding: EdgeInsets.all(20.0),
        ),
        child: Text(
          widget.letter,
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}