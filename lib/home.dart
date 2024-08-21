import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('My aPP',style: TextStyle(color: Colors.amberAccent),),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(

        child: Column(
          // mainAxisSize: MainAxisSize.min,
          // verticalDirection: VerticalDirection.up,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.deepOrange,
              child: Text('Container 1'),
            ),
            // SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.amber,
              child: Text('Container 2'),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.cyan,
              child: Text('Container 3'),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text('Container 4'),
            ),
            Container(
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
