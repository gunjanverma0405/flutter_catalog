import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 1;
    String name = "Flutter";

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0,
        // iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Catalog App",
          // style: TextStyle(
          //   color: Colors.black,
          // ),
        ),
      ),
      body: Center(
        child: Text("$name: Day $days"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
