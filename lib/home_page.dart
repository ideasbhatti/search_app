import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:search_app/detail_page.dart';
import 'package:search_app/myclass/camera.dart';
import 'package:search_app/widgets/mero_search_box.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          MeroSearchBox(),
          Expanded(
            child: ListView.builder(
              itemCount: listCamera.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 2,
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(listCamera[index]),
                          ),
                        );
                      },
                      title: Text(
                        listCamera[index].name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(listCamera[index].description),
                      leading: Hero(
                          tag: listCamera[index].id,
                          child: Image.asset(listCamera[index].image)),
                      trailing: Text(
                        "Rs. " + listCamera[index].price.toStringAsFixed(2),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
