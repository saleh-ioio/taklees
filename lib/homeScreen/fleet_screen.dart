import 'package:flutter/material.dart';

class fleet_screen extends StatefulWidget {
  const fleet_screen({super.key});

  @override
  State<fleet_screen> createState() => _fleet_screenState();
}

class _fleet_screenState extends State<fleet_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: ListView(children: const []),
    );
  }
}
