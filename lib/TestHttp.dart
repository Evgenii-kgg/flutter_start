import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class TestHttp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TestHttpState();
}

// вариант с асинхронностью

class TestHttpState extends State<TestHttp> {
  httpGet() async {
    try {
    var response = await http.get('https://json.flutter.su/echo');

    print('response status: ${response.statusCode}');
    print('response body: ${response.body}');
    } catch (error) {
      print('error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: FlatButton(
          onPressed:  httpGet,
          child: Text('Go back!'),
        ),
      ),
    );
  }
}


// вариант без асинхронности )


// class TestHttpState extends State<TestHttp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Screen"),
//       ),
//       body: Center(
//         child: FlatButton(
//           onPressed: () {
//             http.get('https://json.flutter.su/echo').then((response) {
//               print('response status: ${response.statusCode}');
//               print('response body: ${response.body}');
//             }).catchError((error)=> {
//               print('error: $error')
//             });
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
