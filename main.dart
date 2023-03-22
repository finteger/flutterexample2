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
                color: Colors.blue,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Text('Hello',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 184,
                        wordSpacing: 15,
                      )),
                  Image.asset('assets/images/download.png',
                      width: 433, height: 340, fit: BoxFit.fill),
                  Image.asset('assets/images/download.png',
                      width: 433, height: 340, fit: BoxFit.fill),
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
