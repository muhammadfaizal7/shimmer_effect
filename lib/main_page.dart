import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shimmer Demo"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://img.cumicumi.com/uploads/public/166/141/565/1661415658630730ea91738.jpeg"),
                        fit: BoxFit.cover)),
              ),
              Shimmer(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                      0.4,
                      0.5,
                      0.6
                    ],
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0)
                    ]),
                child: Container(
                  width: 200,
                  height: 300,
                  color: Colors.red,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Shimmer(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.4, 0.5, 0.6],
                colors: [Colors.black, Colors.white, Colors.black]),
            child: Text(
              "Jihyo Istri Aku",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      )),
    );
  }
}
