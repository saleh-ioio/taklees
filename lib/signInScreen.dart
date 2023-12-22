import 'package:flutter/material.dart';

class signInScreen extends StatefulWidget {
  const signInScreen({super.key});

  @override
  State<signInScreen> createState() => _signInScreenState();
}

class _signInScreenState extends State<signInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
              top: MediaQuery.of(context).size.height / 2,
              child: Container(
                width: MediaQuery.of(context).size.width / 5 * 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Log In"),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), label: Text("Email")),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("password")),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget password?",
                          )),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign In ",
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
