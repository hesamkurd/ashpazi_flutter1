import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_application_1/routes/router.gr.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(const SubCategory()),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red[400],
          ),
          child: const Text('go to sub Page'),
        ),
      ),
    );
    ;
  }
}
