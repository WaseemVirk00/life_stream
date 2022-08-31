import 'package:flutter/material.dart';

class bloodGroup extends StatelessWidget {
  final String text;

  const bloodGroup({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.withOpacity(0.1),
      margin: const EdgeInsets.only(right: 10),
      height: 40,
      width: 50,
      child: Center(
          child: Text(
        text,
        style: const TextStyle(
            color: Colors.red, fontWeight: FontWeight.w900, fontSize: 16),
      )),
    );
  }
}
