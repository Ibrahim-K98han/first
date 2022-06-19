import 'package:flutter/material.dart';

import 'listview_example.dart';

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
      home: ListViewExample(),
    );
  }

}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("My First App"),
      // ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('img/sajek.jpg', width: double.infinity,height: 300.0,fit: BoxFit.cover,),
            buildTitleSetcionWithListTile(),
            buildNavSection(),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Sajek valley is known for its natural environment and is surrounded by mountains, dense forest, and grassland hill tracks. Many small rivers flow through the mountains among which the Kachalong and the Machalong are notable. On the way to Sajek valley, one has to cross the Mayni range and the Mayni river.Sajek valley is known for its natural environment and is surrounded by mountains, dense forest, and grassland hill tracks. Many small rivers flow through the mountains among which the Kachalong and the Machalong are notable. On the way to Sajek valley, one has to cross the Mayni range and the Mayni river.Sajek valley is known for its natural environment and is surrounded by mountains, dense forest, and grassland hill tracks. Many small rivers flow through the mountains among which the Kachalong and the Machalong are notable. On the way to Sajek valley, one has to cross the Mayni range and the Mayni river.Sajek valley is known for its natural environment and is surrounded by mountains, dense forest, and grassland hill tracks. Many small rivers flow through the mountains among which the Kachalong and the Machalong are notable. On the way to Sajek valley, one has to cross the Mayni range and the Mayni river.Sajek valley is known for its natural environment and is surrounded by mountains, dense forest, and grassland hill tracks. Many small rivers flow through the mountains among which the Kachalong and the Machalong are notable. On the way to Sajek valley, one has to cross the Mayni range and the Mayni river.Sajek valley is known for its natural environment and is surrounded by mountains, dense forest, and grassland hill tracks. Many small rivers flow through the mountains among which the Kachalong and the Machalong are notable. On the way to Sajek valley, one has to cross the Mayni range and the Mayni river.'),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildNavSection() {
    return Container(
      transform: Matrix4.identity()..scale(1),
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade600,
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          colors: [Colors.blue.shade200, Colors.blue.shade900],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 1.0]
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0,5)
          ),
        ],
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.call, color: Colors.white,),
                SizedBox(height: 10,),
                Text('CALL',style: TextStyle(fontSize: 18,color: Colors.white),),
              ],
            ),
            Column(
              children: [
                Icon(Icons.near_me,color: Colors.white),
                SizedBox(height: 10,),
                Text('ROUTE',style: TextStyle(fontSize: 18,color: Colors.white),),
              ],
            ),
            Column(
              children: [
                Icon(Icons.share,color: Colors.white),
                SizedBox(height: 10,),
                Text('SHARE',style: TextStyle(fontSize: 18,color: Colors.white),),
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

  Widget buildTitleSetcionWithListTile() {
    return ListTile(
        title:Text('Sajek Valley', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        subtitle:Text('Khagrachori, Bandharban', style: TextStyle(fontSize: 16),),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star),
            Text(90.toString(),style: TextStyle(fontSize: 18),),
          ],
        ),
      );
  }
}


