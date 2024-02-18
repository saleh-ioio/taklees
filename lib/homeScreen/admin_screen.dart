import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:latlong2/latlong.dart';

import 'new_order_screen.dart';
import 'order_detail_screen.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  Widget drawerItem(String name) {
    return ListTile(
      style: ListTileStyle.drawer,
      title: Text(name),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const newOrderFormScreen()));
          },
          child: const Icon(Icons.add_box)),
      drawer: Drawer(
        child: ListView(children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: const Icon(
              Icons.person_pin_sharp,
              size: 80,
            ),
          ),
          drawerItem("~ Tariq"),
          drawerItem("~ Un Assigned Orders"),
          drawerItem("~ Assigned Orders"),
          drawerItem("~ Fleet"),
          drawerItem("~ Analitics"),
          drawerItem("~ Settings"),
        ]),
      ),
      appBar: AppBar(
        title: const Text("not assigned "),
      ),
      body: SlidingUpPanel(
        color: const Color.fromARGB(255, 217, 217, 217),
        borderRadius: BorderRadius.circular(40),
        panel: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35.0),
          child: FlutterMap(
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
        ),
        body: ListView(children: [
          orderTile(
              clientName: "omar",
              idNum: 44,
              location: "amman",
              payment: "cash : 89 jod"),
          orderTile(
            clientName: "omar",
            idNum: 44,
            location: "amman",
            payment: "visa ",
          ),
          orderTile(
              clientName: "omar",
              idNum: 44,
              location: "amman",
              payment: "cash : 89 JOd"),
          orderTile(
            clientName: "omar",
            idNum: 44,
            location: "amman",
            payment: "visa",
          ),
        ]),
      ),
    );
  }

  Widget orderTile({
    required String clientName,
    required int idNum,
    required String location,
    required String payment,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: ListTile(
        leading: const Icon(Icons.photo_album),
        title: Text("$clientName  #$idNum"),
        subtitle: Text(location),
        trailing: Text(payment),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const orderScreen()));
        },
      ),
    );
  }
}
