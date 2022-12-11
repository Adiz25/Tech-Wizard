import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wayne/models/catalog.dart';

import 'package:flutter/material.dart';
import 'package:wayne/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Do you Want to Buy?'),
        action: SnackBarAction(
            label: 'YES', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  final Item item;

  const ItemWidget({super.key, required this.item})
      : assert(item != null),
        super();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name}");
        },
        onLongPress: () {
          _showToast(context);
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
            textScaleFactor: 1.5,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
