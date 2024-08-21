import 'package:flutter/material.dart';
class singlechild_scroll extends StatefulWidget {
  const singlechild_scroll({super.key});

  @override
  State<singlechild_scroll> createState() => _singlechild_scrollState();
}

class _singlechild_scrollState extends State<singlechild_scroll> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            color: Colors.red,
            child: Center(child: Text('Item 1')),
          ),
          Container(
            height: 200,
            color: Colors.green,
            child: Center(child: Text('Item 2')),
          ),
          Container(
            height: 200,
            color: Colors.blue,
            child: Center(child: Text('Item 3')),
          ),
          Container(
            height: 200,
            color: Colors.yellow,
            child: Center(child: Text('Item 4')),
          ),
          Container(
            height: 200,
            color: Colors.orange,
            child: Center(child: Text('Item 5')),
          ),
        ],
      ),
    );
  }
}
