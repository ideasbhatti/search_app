import 'package:flutter/material.dart';

class MeroSearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15),
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(31),
            borderSide: BorderSide(width: 0.6),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(31),
            borderSide: BorderSide(width: 0.6),
          ),
          hintText: 'Search Anything',
          prefixIcon: Icon(Icons.search, size: 30),
          suffixIcon: Icon(Icons.clear, size: 30),
        ),
      ),
    );
  }
}
