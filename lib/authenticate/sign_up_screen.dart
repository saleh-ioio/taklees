import 'package:flutter/material.dart';

class singUpScreen extends StatefulWidget {
  const singUpScreen({super.key});

  @override
  State<singUpScreen> createState() => _singUpScreenState();
}

class _singUpScreenState extends State<singUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
              top: MediaQuery.of(context).size.height / 2,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 5 * 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Sign up"),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text(
                          "Name",
                        ),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text(
                          "Email",
                        ),
                      ),
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("password")),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign Up",
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
