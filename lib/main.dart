import 'package:flutter/material.dart';

import 'browse_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: const BrowseScreen(),
    ),
  );
}
