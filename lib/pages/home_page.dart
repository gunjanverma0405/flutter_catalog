import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int days = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData['products'];
    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      // Center(
      //   child: Text(context.runtimeType.toString()),
      // ),
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
