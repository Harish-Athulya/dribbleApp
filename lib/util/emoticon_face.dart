import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;

  const EmoticonFace({Key? key, required this.emoticonFace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 29, 102, 142),
              borderRadius: BorderRadius.circular(12)),
          // padding: EdgeInsets.all(12),
          child: Center(
              child: Text(emoticonFace, style: TextStyle(fontSize: 30)))),
    );
  }
}
