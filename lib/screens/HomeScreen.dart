import 'package:Food_Delivery_App/screens/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:Food_Delivery_App/repository/repository.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  final _data = FakeRepository.data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: _data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Container(
            color: Colors.pink[100],
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              children: [
                Container(
                  child: Lottie.asset(_data[index].image, repeat: false),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  _data[index].title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _data[index].description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: index != 2
                        ? Container(
                            height: 50,
                            width: 50,
                            child: Lottie.asset("assets/next.json"),
                          )
                        : Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Lottie.asset(
                                    "assets/complete.json",
                                    repeat: false,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => HomePage()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'Get Started',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
