import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wayne/models/catalog.dart';
import 'package:wayne/widget/drawer.dart';
import 'dart:convert';
import 'package:wayne/widget/item_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String name = "Aditya";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    lodeData();
  }

  lodeData() async {
    await Future.delayed(Duration(seconds: 2));
    const JsonDecoder decoder = JsonDecoder();
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    // var decodedData = JsonDecoder(catalogJson);
    final Map<String, dynamic> decodedData = decoder.convert(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tech Wizard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items!.length,
                itemBuilder: (context, index) => // here we are Optimising LOC
                    ItemWidget(
                      item: CatalogModel.items![index],
                    ))
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('You are Loged in..'),
        action: SnackBarAction(
            label: 'OK', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
