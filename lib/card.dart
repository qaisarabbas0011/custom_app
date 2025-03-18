import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Widget')),
      body: Center(
        child: Card(
          elevation: 5,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(child: Text('Hello from Flutter!')),
          ),
        ),
      ),
    );
  }
}
