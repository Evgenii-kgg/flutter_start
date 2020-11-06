import 'package:flutter/material.dart';
import 'package:my_app/second.dart';
import 'package:my_app/example.dart';
import 'package:my_app/TestHttp.dart';


void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => FirstScreen(),
      '/second': (context) => MyForm(),
      '/http': (context) => TestHttp(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Launch screen'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/http');
          },
        ),
      ),
    );
  }
}

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Screen"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, '/Third');
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }


