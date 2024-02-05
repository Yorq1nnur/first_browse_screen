import 'package:first_browse_screen/screens/helper_screen/helper_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HelperScreen(),
    ),
  );
}