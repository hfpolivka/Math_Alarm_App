import 'package:flutter/material.dart';
import 'package:math_alarm_app/addnew.dart';
import 'package:math_alarm_app/edits.dart';


class TogglePage extends StatelessWidget {      // probably need to be Stateful for live changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          title: Text("Alarms", style: TextStyle(
          color: Colors.amber,
          fontSize: 30,
          fontWeight: FontWeight.bold, 
        ),),
        // centerTitle: true,
        backgroundColor: Colors.grey[850],
        actions: [
          IconButton(
              icon: Icon(Icons.add, color: Colors.amber),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddNewAlarm()
                  )
                );
              },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            
          ],
        ), 
      ),
    );
  }
}