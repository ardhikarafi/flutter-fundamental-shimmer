import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shimmer Demo")),
      body: Center(
          child: Stack(
        children: [
          Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn1-production-images-kly.akamaized.net/Cg5cZtzkpea-fp9EmaWfjWsUDgM=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2780002/original/053574400_1555394860-avengers_2.jpg"),
                    fit: BoxFit.cover)),
          ),
          Shimmer(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: [
                  0.4,
                  0.5,
                  0.6
                ],
                colors: [
                  Colors.grey.withOpacity(0),
                  Colors.grey.withOpacity(0.5),
                  Colors.grey.withOpacity(0)
                ]),
            child: Container(
              width: 200,
              height: 300,
              color: Colors.grey,
            ),
          )
        ],
      )),
    );
  }
}
