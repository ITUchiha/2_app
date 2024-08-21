import 'package:flutter/material.dart';

class listview_builder extends StatefulWidget {
  const listview_builder({super.key});

  @override
  State<listview_builder> createState() => _listview_builderState();
}

class _listview_builderState extends State<listview_builder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 30,
        scrollDirection: Axis.horizontal,
        itemBuilder:(context,position){
          return Card(
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Text((position+1).toString(), style: TextStyle(
                fontSize: 30,
              ),),
            ),
          );
        }
    );
  }
}
