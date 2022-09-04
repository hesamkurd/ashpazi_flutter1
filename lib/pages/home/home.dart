import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/main.home/home.body.dart';
import 'package:flutter_application_1/unit/app.layout.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding:  EdgeInsets.only(left: AppLayout.getWidth(16), right: AppLayout.getWidth(16)),
          margin: EdgeInsets.only(top: AppLayout.getHeight(45), bottom: AppLayout.getHeight(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('data'), Icon(Icons.person)],
          ),
        ),
        const Expanded(child: SingleChildScrollView(
          child:  HomeBody(),
        ))
      ],
    ));
  }
}
