import 'package:flutter/material.dart';
import 'package:twister/modules/shop.dart';
class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: value.shop.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    value.shop[index].name,
                  ),
                  subtitle: Text(value.shop[index].price),
                );
              },
            ),
          ),
        ]);,
  }
}
