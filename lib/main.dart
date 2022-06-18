import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hello Android",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Hello Java",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Hello Dart",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Hello Kotlin",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Hello React",
                style: TextStyle(fontSize: 20),
              ),
              Row(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.share),
                  Icon(Icons.navigation),
                  Icon(Icons.search),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

