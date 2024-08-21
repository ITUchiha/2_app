import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 150),
              child: CircleAvatar(
                // backgroundColor: Colors.deepOrange,
                radius: 80,
                backgroundImage: AssetImage('images/gojo.jpg'),
              ),
            ),
            Text(
              'Gojo sataru',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Custom_style',
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.symmetric(
                      vertical:
                          BorderSide(color: Colors.transparent, width: 10),
                      horizontal: BorderSide(color: Colors.white))),
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                'Special Grade Sorcerror',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontFamily: 'oswald',
                  letterSpacing: 4,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              color: Colors.cyan,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(Icons.phone,
                    size: 30,
                    color: Colors.white,
                    ),
                  ),
                  Text('+1232 4353 45435',
                    style: TextStyle(color: Colors.white,fontFamily: 'Custom_style2',letterSpacing: 2),
                  )
                ],
              ),
            ),
            Card(
              color: Colors.cyan,
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 50),
              child: ListTile(
                leading: Icon(Icons.phone,color: Colors.white,),
                title: Text('+1232 4353 45435',
                  style: TextStyle(color: Colors.white,fontFamily: 'Custom_style2',letterSpacing: 2),
                ),
              ),
            ),
           Card(
             color: Colors.cyan,
             margin: EdgeInsets.symmetric(vertical: 10,horizontal: 50),
             child: ListTile(
               leading: Icon(Icons.email_rounded,color: Colors.white,),
               title: Text('gojosataru@gmail.com',
                 style: TextStyle(color: Colors.white,fontFamily: 'Custom_style2',letterSpacing: 2),
               ),
             ),
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
