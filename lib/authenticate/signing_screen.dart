import 'package:flutter/material.dart';
import 'signIn_screen.dart';
import 'sign_up_screen.dart';

class signingScreen extends StatefulWidget {
  const signingScreen({super.key});

  @override
  State<signingScreen> createState() => _signingScreenState();
}

class _signingScreenState extends State<signingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 132, 123),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Positioned(
            right: 1,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 23, 92, 85),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(200))),
              height: 300,
              width: 150,
            ),
          ),
          Positioned(
            left: 0,
            top: MediaQuery.of(context).size.height / 5 * 2,
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 30, 20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 23, 92, 85),
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(10))),
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color.fromARGB(255, 238, 232, 169)),
                    ),
                    Text(
                      "To Safeer",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color.fromARGB(255, 238, 232, 169),
                      ),
                    ),
                    Text(
                      "start your journey to success",
                      style: TextStyle(
                        color: Color.fromARGB(255, 238, 232, 169),
                      ),
                    )
                  ]),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 5 * 3,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const sign_in_screen()));
                    },
                    style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 8, horizontal: 50)),
                        foregroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 23, 92, 85))),
                    child: const Text(
                      "sign in as Admin",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2),
                    child: TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 50)),
                          foregroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 255, 255, 255)),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 23, 92, 85))),
                      child: const Text(
                        "sign in as Rider",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const singUpScreen()));
                      },
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 50)),
                          foregroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 23, 92, 85)),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 255, 255, 255))),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  )
                ],
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 238, 232, 169),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(150))),
                width: 100,
                height: 150,
              ))
        ],
      ),
    );
  }
}
