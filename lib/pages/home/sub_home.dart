import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class SubHome extends StatelessWidget {
  final List<String> items;

   const SubHome({@PathParam() required this.items, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        prototypeItem: ListTile(
          title: Text(items.first),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
