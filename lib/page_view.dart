import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Construct Dots Indicator

class PageViewDemo2 extends StatefulWidget {
  const PageViewDemo2({Key? key}) : super(key: key);

  @override
  State<PageViewDemo2> createState() => _PageViewDemo2State();
}

class _PageViewDemo2State extends State<PageViewDemo2> {
  // declare and initizlize the page controller
  final PageController _pageController = PageController(initialPage: 0);

  // the index of the current page
  int _activePage = 0;

  // this list holds all the pages
  // all of them are constructed in the very end of this file for readability
  final List<Widget> _pages = [
    const MangaApp(),
    const PageTwo(),
    const PageThree()
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          // the page view
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          // Display the dots indicator
          Center(
            child: Container(
              //navbar container
              decoration: BoxDecoration(
                color: Color(0xFFECECEC),
                borderRadius: BorderRadius.all(Radius.circular(35)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: Offset(0, 2), // Offset in x and y direction
                  ),
                ],
              ),
              width: 200,
              height: 70,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: height * 0.90, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List<Widget>.generate(
                    2,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              _pageController.animateToPage(index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            child: _activePage != index
                                ? IconButton(
                                    onPressed: () {
                                      _pageController.animateToPage(index,
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.easeIn);
                                    },
                                    icon: Icon(Icons.book_rounded),
                                    color: Color(0xFF6F767C),
                                  )
                                : Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5.0, horizontal: 10),
                                        child: Text(
                                          index == 1 ? 'Manga' : 'Home',
                                          style: TextStyle(
                                            color: Color(0xFF046588),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2,
                                        child: Container(
                                          color: Color(0xFF605A7C),
                                          width: 30,
                                        ),
                                      )
                                    ],
                                  ),
                          ),
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Page One
class MangaApp extends StatefulWidget {
  const MangaApp({super.key});

  @override
  State<MangaApp> createState() => _MangaAppState();
}

class _MangaAppState extends State<MangaApp> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF6F7F8),
      body: Center(
        child: Container(
          height: height * 0.54,
          margin: EdgeInsets.only(top: height * 0.30,bottom: height * 0.10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'One Piece',
                style: GoogleFonts.roboto(
                    fontSize: 60,
                    fontWeight: FontWeight.w100,
                    color: Color(0xFF0E6181)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'The NEW Best Anime & Manga app \n for Android .',
                style: TextStyle(
                  color: Color(0xFFBDC4CA),
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFC2E8FF)),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.ac_unit_sharp,
                          color: Color(0xFF011E2C),
                          size: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Color(0xFF011E2C),
                                fontWeight: FontWeight.w900,
                                fontSize: 22,
                                letterSpacing: 2),
                          ),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 30,
              ),
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
                        Icons
                            .g_translate_sharp, // Replace with your desired icon
                        size: 50.0, // Set the icon size
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
                child: Text(
                  'Restore settings',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xFF798086),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Page Two
class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  TextEditingController tc1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image.network(
          //   'https://th.bing.com/th/id/OIP.zzY31RqzNanyEiN1JdHsUAHaQC?rs=1&pid=ImgDetMain',
          //   fit: BoxFit.cover,
          //   width: double.infinity,
          //   height: 600,
          // ),
          Column(
            children: [
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Row(
                 children: [
                   Expanded(
                     child: TextFormField(
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.indigoAccent,width: 2),
                           borderRadius: BorderRadius.circular(25),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.deepOrange, width: 1),
                           borderRadius: BorderRadius.circular(20),
                         ),
                       ),                   ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 5.0),
                     child: Icon(
                       Icons.account_circle_rounded,
                       size: 45,
                     ),
                   )
                 ],
               ),
             )
            ],
          )
        ],
      ),
    );
  }
}

// Page Three
class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: const Text(
          'Blue Page',
          style: TextStyle(fontSize: 50, color: Colors.white),
        ));
  }
}
