import 'package:flutter/material.dart';

class pageview extends StatefulWidget {
  const pageview({super.key});

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  final PageController _pageController = PageController(initialPage: 0,viewportFraction: 1);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        PAgeone(),
        PAgetwo(),
        PAgethree(),
      ],
    );
  }
  // Dispose the PageController
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class PAgeone extends StatelessWidget {
  const PAgeone({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.lightGreenAccent,
        child: Center(
          child: Text(
            'PAge1',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              decoration: TextDecoration.none
            ),
          ),
        ),
      ),
    );
  }
}

class PAgetwo extends StatelessWidget {
  const PAgetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.deepOrange,
        child: Center(
          child: Text(
            'PAge2',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
                decoration: TextDecoration.none
            ),
          ),
        ),
      ),
    );
  }
}
class PAgethree extends StatelessWidget {
  const PAgethree({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'PAge3',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
                decoration: TextDecoration.none
            ),
          ),
        ),
      ),
    );
  }
}