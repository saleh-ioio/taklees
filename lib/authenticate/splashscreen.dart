import 'package:flutter/material.dart';

import 'signing_screen.dart';

class SplashSceen extends StatefulWidget {
  const SplashSceen({super.key});

  @override
  State<SplashSceen> createState() => _SplashSceenState();
}

class _SplashSceenState extends State<SplashSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
              top: -10,
              left: 100,
              child: Container(
                padding: const EdgeInsets.fromLTRB(75, 0, 0, 30),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 23, 92, 85),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100))),
                child: const Image(
                  width: 250,
                  image: AssetImage('assets/splashphoto.png'),
                ),
              )),
          Positioned(
            bottom: 100,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(20)),
                color: Color.fromARGB(255, 39, 132, 123),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Text("Deliver With Precision,",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 207, 232, 228))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Text("Every Time!",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 207, 232, 228))),
                  ),
                  Text("Start your journey to success",
                      style:
                          TextStyle(color: Color.fromARGB(255, 207, 232, 228))),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 20,
              right: 20,
              child: TextButton(
                style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 238, 232, 169)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 39, 132, 123))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const signingScreen()));
                },
                child: const Text("Skip"),
              ))
        ],
      ),
    );
  }
}
