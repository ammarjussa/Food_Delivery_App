import 'package:flutter/material.dart';

Widget _headerWidget() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.person),
            Container(
              height: 40,
              width: 40,
              child: Image.asset('assets/logo.png'),
            ),
            Icon(Icons.favorite_border)
          ],
        ),
      )
    ],
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            _headerWidget(),
          ],
        ),
      ),
    );
  }
}
