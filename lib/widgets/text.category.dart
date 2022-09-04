import 'package:flutter/material.dart';

import '../unit/app.layout.dart';
import 'big.text.dart';

class TextCategory extends StatelessWidget {
  final String text;
  const TextCategory({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppLayout.getScreenWidth(),
      margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BigText(
            text: text,
            size: 16,
          ),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
