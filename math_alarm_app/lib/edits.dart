import 'package:flutter/material.dart';


class EditingPage extends StatelessWidget {     // probably need to be Stateful for live changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Edit Alarm", style: TextStyle(
          color: Colors.amber,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        backgroundColor: Colors.grey[850]
      ),
      body: Center(
        child: Column(),

      ),
    );
  }   
}