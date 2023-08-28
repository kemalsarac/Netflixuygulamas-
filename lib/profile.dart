import 'package:flutter/material.dart';
import 'package:kemal/a.dart';
import 'package:kemal/src.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  Widget _buildClickableBox(
    Color color,
    String text,
    String link, {
    bool addBorder = false,
    bool isPlusBox = false,
    required BuildContext context,
  }) {
    Widget content;

    if (isPlusBox) {
      content = Icon(
        Icons.add,
        size: 48,
        color: Colors.white,
      );
    } else {
      content = Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
              border:
                  addBorder ? Border.all(color: Colors.white, width: 2) : null,
            ),
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      );
    }

    return GestureDetector(
      onTap: () {
        if (!isPlusBox) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WidgetDetails(),
            ),
          );
        }
      },
      child: Container(
        width: 100,
        height: 140,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: addBorder ? Border.all(color: Colors.white, width: 2) : null,
        ),
        child: Center(child: content),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Kim izliyor?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              print("Sağ üst köşedeki metne tıklandı.");
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              child: Text(
                "Düzenle",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(0, -46),
                    child: _buildClickableBox(
                      Colors.blue,
                      "Kullanıcı ",
                      "https://www.example.com/blue",
                      context: context,
                    ),
                  ),
                  SizedBox(width: 16),
                  Transform.translate(
                    offset: Offset(0, -46),
                    child: _buildClickableBox(
                      Colors.black,
                      "Profil Ekle",
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Plus_symbol.svg/220px-Plus_symbol.svg.png",
                      addBorder: true,
                      isPlusBox: true,
                      context: context,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
