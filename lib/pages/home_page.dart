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
        child: Text(context.runtimeType.toString()),
      ),
      // Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.green,
      // ),
      // Container(
      //   constraints: const BoxConstraints(
      //     maxHeight: 200,
      //     minHeight: 70,
      //     minWidth: 70,
      //     maxWidth: 200,
      //   ),
      //   height: 300,
      //   width: 300,
      //   color: Colors.green,
      //   child: Container(
      //     height: 70,
      //     width: 70,
      //     color: Colors.red,
      //   ),
      // ),
      drawer: const MyDrawer(),
    );
  }
}
