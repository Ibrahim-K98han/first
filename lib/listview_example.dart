import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  final countryList = ['Afghanistan','Bangladesh','Canada','Denmark','England','France','Afghanistan','Bangladesh','Canada','Denmark','England','France','Afghanistan','Bangladesh','Canada','Denmark','England','France','Afghanistan','Bangladesh','Canada','Denmark','England','France'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              width: 200,
              child: Card(
                child: ListTile(
                  title: Text(countryList[index]),
                ),
              ),
            ),
            itemCount: countryList.length,
        ),
      ),
    );
  }
}
