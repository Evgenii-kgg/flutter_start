import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Third');
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}