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
        // appBar: AppBar(
        //   title: Text("My First App"),
        // ),
        body:Column(
          children: [
              Image.asset('img/sajek.jpg', width: double.infinity,height: 300.0,fit: BoxFit.cover,),
              buildTitleSetcion(),
              buildNavSection(),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Sajek valley is known for its natural environment and is surrounded by mountains, dense forest, and grassland hill tracks. Many small rivers flow through the mountains among which the Kachalong and the Machalong are notable. On the way to Sajek valley, one has to cross the Mayni range and the Mayni river.'),

              ),
          ],
        ),
      ),
    );
  }

  Padding buildNavSection() {
    return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.call, color: Colors.blue,),
                      SizedBox(height: 10,),
                      Text('CALL',style: TextStyle(fontSize: 18),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.near_me,color: Colors.blue),
                      SizedBox(height: 10,),
                      Text('ROUTE',style: TextStyle(fontSize: 18),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share,color: Colors.blue),
                      SizedBox(height: 10,),
                      Text('SHARE',style: TextStyle(fontSize: 18),),
                    ],
                  )
                ],
              ),
            );
  }

  Padding buildTitleSetcion() {
    return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sajek Valley', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text('Khagrachori, Bandharban', style: TextStyle(fontSize: 16),)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star),
                      Text(90.toString(), style: TextStyle(fontSize: 18),),
                    ],
                  )
                ],
              ),
            );
  }
}

