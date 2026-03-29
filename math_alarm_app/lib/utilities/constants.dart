import 'package:flutter/material.dart';

// Default background color
var defaultBackgroundColor = Colors.grey[300];

// Main app bar
var mainAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

// Main app drawer
var mainAppDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: const [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('D A S H B O A R D'),
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text('M E S S A G E'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('S E T T I N G S'),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('L O G O U T'),
      ),
    ],
  ),
);