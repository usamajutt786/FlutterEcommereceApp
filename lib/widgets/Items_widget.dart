import 'package:flutter/material.dart';

import '../Models/catalog.dart';

class ItemsWidget extends StatelessWidget {
  final Item item;

  const ItemsWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(item.image),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text(item.price.toString()),
      

    );
  }
}
