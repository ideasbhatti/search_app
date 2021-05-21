import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'myclass/camera.dart';

class DetailPage extends StatelessWidget {
  final Camera camera;
  DetailPage(this.camera);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  // SizedBox(height: 50),
                  Hero(
                    tag: camera.id,
                    child: Image(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      image: AssetImage(camera.image),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Text(
                camera.name,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                camera.description,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Rating : ⭐⭐⭐⭐⭐",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    color: Colors.redAccent,
                    height: 50,
                    child: Text(
                      'Purchase',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      launch(camera.url);
                    },
                  ),
                  MaterialButton(
                    color: Colors.redAccent,
                    height: 50,
                    child: Text(
                      'Add To Cart',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
