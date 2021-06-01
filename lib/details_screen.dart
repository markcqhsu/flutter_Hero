import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String path;

  const DetailScreen(this.path);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: path,
              child: Container(
                color: Colors.blue,
                child: Image.asset(
                  path,
                  width: 80,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lorm ipsum dolor sit amet",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Consectetur idwqpdiwqjpfoqjpfjqpf",
                style: TextStyle(color: Colors.grey[700]),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}
