import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(SearchApp());
}

class SearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Search App",
      home: HomePage(),
    );
  }
}
