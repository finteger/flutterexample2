// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, sized_box_for_whitespace
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(builder: (context) => HomePage());
            case '/page1':
              return MaterialPageRoute(builder: (context) => Page1());
            default:
              return null;
          }
        },
        initialRoute: '/',
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Container(
                height: 320,
                width: 433,
                alignment: Alignment.center,
                color: Colors.white,
                child: Stack(children: <Widget>[
                  ListView(scrollDirection: Axis.horizontal, children: [
                    Container(
                        height: 320,
                        width: 433,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('Software Development.'))
                          ],
                        )),
                    Container(
                        height: 320,
                        width: 433,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('Nursing Program.'))
                          ],
                        )),
                    Container(
                        height: 320,
                        width: 433,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('Electrical Engineering.'))
                          ],
                        )),
                    Container(
                        height: 320,
                        width: 433,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('Business Administration.'))
                          ],
                        )),
                  ]),
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              RotateAnimatedText('AWESOME',
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      backgroundColor: Colors.blue)),
                              RotateAnimatedText('OPTIMISTIC',
                                  textStyle: TextStyle(
                                      letterSpacing: 3,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange)),
                              RotateAnimatedText(
                                'DIFFERENT',
                                textStyle: TextStyle(
                                  fontSize: 30,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                            isRepeatingAnimation: true,
                            totalRepeatCount: 10,
                            pause: Duration(milliseconds: 1000),
                          ),
                          Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 44,
                          ),
                        ])),
                  ]),
                ])),
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text('Welcome to RDPolytech',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                  )),
              Image.asset('assets/images/download.png',
                  width: 433, height: 340, fit: BoxFit.fill),
            ])
          ])),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pageview),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pageview),
            label: 'Page 2',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/page1');
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/images/earth.jpg'),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 160, 141, 141),
              spreadRadius: 7,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Earth',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 64,
                        wordSpacing: 15,
                      )),
                  Stack(children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(color: Colors.red)),
                    const Text("Hello"),
                  ])
                ]),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pageview),
            label: 'Page 1',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/page1');
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}

