import 'package:flutter/material.dart';
import 'package:kemal/a.dart';

void main() {
  runApp(const download());
}

class download extends StatelessWidget {
  const download({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "İndirilenler",
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true, // appbarı ortalama
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WidgetDetails()));
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'images/a1.jpg',
                  height: 350,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16),
                Image.asset(
                  'images/a2.jpg',
                  height: 600,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
