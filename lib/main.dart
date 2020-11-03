import 'package:flutter/material.dart';
import 'package:my_app/second.dart';
import 'package:my_app/example.dart';


void main() => runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            appBar: new AppBar(title: new Text('Flutter.su - Форма ввода')),
            body: new MyForm()
        )
    )
);
// void main() {
//   runApp(MaterialApp(
//     title: 'Named Routes Demo',
//     // Start the app with the "/" named route. In this case, the app starts
//     // on the FirstScreen widget.
//     initialRoute: '/',
//     routes: {
//       // When navigating to the "/" route, build the FirstScreen widget.
//       '/': (context) => FirstScreen(),
//       // When navigating to the "/second" route, build the SecondScreen widget.
//       '/second': (context) => SecondScreen(),
//       '/Third': (context) => NewsBox('Новый урок по Flutter', 'Flutter',
//           imageurl: 'https://flutter.su/favicon.png', num: 10),
//     },
//   ));
// }

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
            Navigator.pushNamed(context, '/second');
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

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onLongPress: () {
            Navigator.pushNamed(context, '/');
          },
          child: Text('main'),
        ),
      ),
    );
  }
}
