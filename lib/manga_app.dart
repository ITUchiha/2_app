import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MangaApp extends StatelessWidget {
  const MangaApp({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:Color(0xFFF6F7F8),
      body: Center(
        child: Container(
          height: height * 0.54,
          margin: EdgeInsets.only(top: height* 0.40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text('One Piece',
                style: GoogleFonts.roboto(fontSize: 60,fontWeight: FontWeight.w100,color: Color(0xFF0E6181)),
                ),
              SizedBox(height: 20,),
              Text('The NEW Best Anime & Manga app \n for Android .',
                style: TextStyle(
                  color: Color(0xFFBDC4CA),
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),
              Container(
                width:200,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFC2E8FF)),onPressed: (){}, child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.ac_unit_sharp,color: Color(0xFF011E2C),size: 30,),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                          'Login',
                        style: TextStyle(color: Color(0xFF011E2C),fontWeight: FontWeight.w900,fontSize: 22,letterSpacing: 2),
                      ),
                    )
                  ],
                )),
              ),
              SizedBox(height: 30,),
              Container(
                width: 250,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Your action when the button is pressed
                      },
                      icon: Icon(
                        Icons.g_translate_sharp, // Replace with your desired icon
                        size: 50.0,// Set the icon size
                        color: Color(0xFFB3B8BE),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Your action when the button is pressed
                      },
                      icon: Icon(
                        Icons.discord, // Replace with your desired icon
                        size: 50.0, // Set the icon size
                        color: Color(0xFFB3B8BE),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Your action when the button is pressed
                      },
                      icon: Icon(
                        Icons.telegram, // Replace with your desired icon
                        size: 50.0, // Set the icon size
                        color: Color(0xFFB3B8BE),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text('Restore settings',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xFF798086),
                  fontSize: 16,
                ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
// Container(//navbar container
// decoration: BoxDecoration(
// color: Color(0xFFECECEC),
// borderRadius: BorderRadius.all(Radius.circular(35)),
// boxShadow: [
// BoxShadow(
// color: Colors.grey.withOpacity(0.5), // Shadow color
// spreadRadius: 3, // Spread radius
// blurRadius: 5, // Blur radius
// offset: Offset(0, 2), // Offset in x and y direction
// ),
// ],
// ),
// width: 150,
// padding: EdgeInsets.all(10),
// margin: EdgeInsets.only(top: 35,),
// child:Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Column(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 10),
// child: Text(
// 'Home',
// style: TextStyle(
// color: Color(0xFF046588),
// fontSize: 20,
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// SizedBox(height: 2,child: Container(
// color: Color(0xFF605A7C),
// width: 30,
// ),)
// ],
// ),
// IconButton(onPressed: (){},icon:Icon(Icons.book_rounded),
// color: Color(0xFF6F767C),),
// ],
// ),
// ),