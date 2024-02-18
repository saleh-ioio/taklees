import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:latlong2/latlong.dart';

class orderScreen extends StatefulWidget {
  const orderScreen({super.key});

  @override
  State<orderScreen> createState() => _orderScreenState();
}

class _orderScreenState extends State<orderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        color: const Color.fromARGB(255, 46, 137, 128),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
        body: FlutterMap(
          options: const MapOptions(
              initialCenter: LatLng(
                32.100215,
                36.185724,
              ),
              initialZoom: 13),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
          ],
        ),
        panel: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
          child: ListView(
            children: [
              const Center(child: Text("Order Details")),
              const Divider(
                color: Colors.white,
              ),
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  clipBehavior: Clip.hardEdge,
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: const Image(image: AssetImage("./assets/holder.jpeg"))),
              const Text("Client Name : Omar khalid"),
              const Text("Rider : Captain Jameel"),
              const Text("payment Method : visa"),
              const Text("Location Link : google.map............."),
              const Text("Address : Amman/ jabal naser/ahmad str/ 86/ 305"),
              const Text("Expected Delivery day : 22/12/2023"),
              const Text("order Status : Delivered"),
              const Text("Rating : order > 3/5 || captain > 4/5"),
              const Text(
                  "feedback : \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
            ],
          ),
        ),
      ),
    );
  }
}
