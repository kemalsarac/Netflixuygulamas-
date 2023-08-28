import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BBApp());
}

class BBApp extends StatelessWidget {
  const BBApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage1(),
    );
  }
}

class MyHomePage1 extends StatelessWidget {
  const MyHomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(""),
        backgroundColor: Colors.black, // AppBar arkaplan rengi
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/bb2.JPG'),
            Image.asset('images/b1.jpg'),
            Image.asset('images/b2.jpg'),
            Image.asset('images/b3.jpg'),
          ],
        ),
      ),
    );
  }
}
