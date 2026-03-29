import 'package:flutter/material.dart';

class StandardBox extends StatelessWidget {
  const StandardBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}