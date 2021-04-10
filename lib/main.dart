import 'package:flutter/material.dart';
import 'package:spanishnumberaudio/homepage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Spanish Number with Audio',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: HomePage(),
  ));
}