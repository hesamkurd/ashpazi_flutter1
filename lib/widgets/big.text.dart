import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  String text;
  Color? color;
  double size;
  TextOverflow textOverflow;

  BigText(
      {Key? key,
      required this.text,
      this.color = Colors.black87,
      this.size = 20,
      this.textOverflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      style:
          TextStyle(color: color, fontWeight: FontWeight.w400, fontSize: size),
    );
  }
}
