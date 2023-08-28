import 'package:flutter/material.dart';
import 'package:kemal/bb.dart';
import 'src.dart';
import 'download.dart';
import 'setprof.dart';
import 'bb.dart';

void main() {
  runApp(const WidgetDetails());
}

class WidgetDetails extends StatelessWidget {
  const WidgetDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Transform.translate(
                offset: Offset(10, 0),
                child: Image.asset(
                  'images/c.png',
                  width: 52,
                  height: 50,
                ),
              ),
              SizedBox(width: 40),
              Text(
                "Diziler",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 32),
              Text(
                "Filmler",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 32),
              Text(
                "Listem",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          centerTitle: false,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/b.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      top: 20,
                      child: Text(
                        "Netflix'te Popüler",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gündemdekiler",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          GestureDetector(
                            onTap: () {
                              print("Resim düğmesine tıklandı!");
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(''),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Yeniden İzleyin",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          GestureDetector(
                            onTap: () {
                              print("Yeniden İzleme düğmesine tıklandı!");
                            },
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 240,
                      child: GestureDetector(
                        onTap: () {
                          print("film düğmesine tıklandı!");
                        },
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/1.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 120,
                      top: 240,
                      child: GestureDetector(
                        onTap: () {
                          print("film düğmesine tıklandı!");
                        },
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/2.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: -76,
                      top: 240,
                      child: GestureDetector(
                        onTap: () {
                          print("film düğmesine tıklandı!");
                        },
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/3.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 33,
                      top: 240,
                      child: GestureDetector(
                        onTap: () {
                          print("film düğmesine tıklandı!");
                        },
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/4.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 120,
                      top: 59,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => BBApp()));
                        },
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'images/5.jpeg'), //ozark film içeriği
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: -76,
                      top: 59,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/6.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 33,
                      top: 59,
                      child: GestureDetector(
                        onTap: () {
                          print("");
                        },
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/7.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 59,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/8.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 120,
                      bottom: -30,
                      child: GestureDetector(
                        onTap: () {
                          print("");
                        },
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/9.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: -76,
                      bottom: -30,
                      child: GestureDetector(
                        onTap: () {
                          print("");
                        },
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/10.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 33,
                      bottom: -30,
                      child: GestureDetector(
                        onTap: () {
                          print("");
                        },
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/11.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      bottom: -30,
                      child: GestureDetector(
                        onTap: () {
                          print("");
                        },
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/12.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  print("");
                },
                icon: Icon(Icons.home, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                icon: Icon(Icons.search, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => download()));
                },
                icon: Icon(Icons.download, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                icon: Icon(Icons.account_circle, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
