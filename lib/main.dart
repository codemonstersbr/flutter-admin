import 'package:flutter/material.dart';
import 'package:web/components/ReciptCard.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        body: Container(
        // Add box decoration
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Color.fromRGBO(250, 168, 102, 1),
                Color.fromRGBO(255, 108, 127, 1),
                Color.fromRGBO(204, 69, 145, 1),
                Color.fromRGBO(97, 52, 156, 1),
              ],
            ),
          ),
          padding: new EdgeInsets.all(24.0),
          child: ReceiptCard(
            image: 'aasdasdsa',
          ),
        )
      ),
    );
  }
}